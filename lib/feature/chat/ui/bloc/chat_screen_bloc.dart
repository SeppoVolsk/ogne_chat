import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kind_owl/common/domain/repo/i_io_repository.dart';
import 'package:kind_owl/feature/chat/domain/entities/chat_screen_entity.dart';
import 'package:kind_owl/feature/chat/domain/entities/message_entity.dart';
import 'package:l/l.dart';
part 'chat_screen_bloc.freezed.dart';

/* ChatScreenBLoC Events */

@freezed
class ChatScreenEvent with _$ChatScreenEvent {
  const ChatScreenEvent._();

  /// Send message
  const factory ChatScreenEvent.send({required String? text}) =
      SendChatScreenEvent;

  /// Listen messages stream
  const factory ChatScreenEvent.update() = UpdateChatScreenEvent;

  /// Emit messages
  const factory ChatScreenEvent.receive(
      {required List<MessageEntity> messages}) = ReceiveChatScreenEvent;

  /// Emit error state
  const factory ChatScreenEvent.error({required Object error}) =
      ErrorChatScreenEvent;
}

/* ChatScreenBLoC States */

@freezed
class ChatScreenState with _$ChatScreenState {
  const ChatScreenState._();

  /// Idling state
  const factory ChatScreenState.idle({
    required final ChatScreenEntity? data,
  }) = IdleChatScreenState;

  /// Processing
  const factory ChatScreenState.processing({
    required final ChatScreenEntity? data,
  }) = ProcessingChatScreenState;

  /// Successful
  const factory ChatScreenState.successful({
    required final ChatScreenEntity? data,
  }) = SuccessfulChatScreenState;

  /// An error has occurred
  const factory ChatScreenState.error(
      {required final ChatScreenEntity? data,
      required final Object error}) = ErrorChatScreenState;

  /// Has data
  bool get hasData => data != null;

  /// If an error has occurred
  bool get hasError => maybeMap<bool>(orElse: () => false, error: (_) => true);

  /// Is in idle state
  bool get isIdling => !isProcessing;

  /// Is in progress state
  bool get isProcessing =>
      maybeMap<bool>(orElse: () => false, processing: (_) => true);
}

/// Buisiness Logic Component ChatScreenBLoC
class ChatScreenBLoC extends Bloc<ChatScreenEvent, ChatScreenState>
    implements EventSink<ChatScreenEvent> {
  ChatScreenBLoC({
    required final IIoRepository repository,
  })  : _repository = repository,
        super(
          ChatScreenState.idle(
            data: ChatScreenEntity(),
          ),
        ) {
    on<ChatScreenEvent>(
      (event, emit) async => await event.map<Future<void>>(
        send: (event) => _sendMessage(event, emit),
        update: (event) => _update(event, emit),
        receive: (event) => _receive(event, emit),
        error: (event) => _error(event, emit),
      ),
      //transformer: bloc_concurrency.sequential(),
      transformer: bloc_concurrency.restartable(),
      //transformer: bloc_concurrency.droppable(),
      //transformer: bloc_concurrency.concurrent(),
    );
  }

  final IIoRepository _repository;
  Stream<List<MessageEntity>>? messageStream;
  StreamSubscription<List<MessageEntity>>? messagesSubscription;

  /// Send message event handler
  Future<void> _sendMessage(
      SendChatScreenEvent event, Emitter<ChatScreenState> emit) async {
    try {
      await _repository.send(params: {"text": event.text});
    } on Object catch (error, stackTrace) {
      l.e('An error occurred in the ChatScreenBLoC: $error', stackTrace);
      emit(ChatScreenState.error(data: state.data, error: error));
      rethrow;
    }
  }

  Future<void> _update(
      UpdateChatScreenEvent event, Emitter<ChatScreenState> emit) async {
    try {
      messageStream ??= _repository.fetch();
      messagesSubscription ??= messageStream?.listen(
        (messages) {
          l.w("BLOC UPDATE ${messages.length}");
          add(ReceiveChatScreenEvent(messages: messages));
        },
        onError: (error) {
          l.e("LISTEN ERROR $error");
          add(ErrorChatScreenEvent(error: error));
        },
        cancelOnError: false,
      );
    } on Object catch (error) {
      add(ErrorChatScreenEvent(error: error));
      rethrow;
    }
  }

  Future<void> _receive(
      ReceiveChatScreenEvent event, Emitter<ChatScreenState> emit) async {
    l.d("RECEIVED ${event.messages.length}");
    emit(ChatScreenState.successful(
        data: ChatScreenEntity(chatMessages: event.messages)));
  }

  Future<void> _error(
      ErrorChatScreenEvent event, Emitter<ChatScreenState> emit) async {
    l.e('An error occurred in the ChatScreenBLoC: ${event.error}');
    emit(ChatScreenState.error(data: state.data, error: event.error));
  }

  @override
  Future<void> close() {
    messagesSubscription?.cancel();
    return super.close();
  }
}

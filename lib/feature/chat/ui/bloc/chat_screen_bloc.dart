import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kind_owl/common/domain/repo/i_io_repository.dart';
import 'package:kind_owl/feature/chat/domain/entities/message_entity.dart';
import 'package:kind_owl/feature/chat/domain/firebase_chat_io_repository.dart';
part 'chat_screen_bloc.freezed.dart';

/* ChatScreenBLoC Events */

@freezed
class ChatScreenEvent with _$ChatScreenEvent {
  const ChatScreenEvent._();

  /// Create
  const factory ChatScreenEvent.sendMessage({required MessageEntity message}) =
      SendMessageChatScreenEvent;

  /// Update
  const factory ChatScreenEvent.update() = UpdateChatScreenEvent;

  /// Delete
  const factory ChatScreenEvent.delete() = DeleteChatScreenEvent;
}

/* ChatScreenBLoC States */

@freezed
class ChatScreenState with _$ChatScreenState {
  const ChatScreenState._();

  /// Idling state
  const factory ChatScreenState.idle({
    required final MessageEntity? data,
  }) = IdleChatScreenState;

  /// Processing
  const factory ChatScreenState.processing({
    required final MessageEntity? data,
  }) = ProcessingChatScreenState;

  /// Successful
  const factory ChatScreenState.successful({
    required final MessageEntity? data,
  }) = SuccessfulChatScreenState;

  /// An error has occurred
  const factory ChatScreenState.error({
    required final MessageEntity? data,
  }) = ErrorChatScreenState;

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
    final MessageEntity? message,
  })  : _repository = repository,
        super(
          ChatScreenState.idle(
            data: MessageEntity(),
          ),
        ) {
    on<ChatScreenEvent>(
      (event, emit) => event.maybeMap<Future<void>>(
        sendMessage: (event) => _sendMessage(event, emit),
        orElse: () async {},
      ),
      transformer: bloc_concurrency.sequential(),
      //transformer: bloc_concurrency.restartable(),
      //transformer: bloc_concurrency.droppable(),
      //transformer: bloc_concurrency.concurrent(),
    );
  }

  final IIoRepository _repository;

  /// Fetch event handler
  Future<void> _sendMessage(
      SendMessageChatScreenEvent event, Emitter<ChatScreenState> emit) async {
    try {
      emit(ChatScreenState.processing(data: state.data));
      final newData = await _repository.send({});
      emit(ChatScreenState.successful(data: newData));
    } on Object catch (err, stackTrace) {
      //l.e('An error occurred in the ChatScreenBLoC: $err', stackTrace);
      emit(ChatScreenState.error(data: state.data));
      rethrow;
    } finally {
      emit(ChatScreenState.idle(data: state.data));
    }
  }
}

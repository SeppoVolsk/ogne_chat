import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kind_owl/common/domain/repo/i_io_repository.dart';
import 'package:kind_owl/feature/chat/domain/entities/chat_screen_entity.dart';
import 'package:kind_owl/feature/chat/domain/entities/message_entity.dart';
import 'package:kind_owl/feature/chat/domain/firebase_chat_io_repository.dart';
import 'package:l/l.dart';
part 'chat_screen_bloc.freezed.dart';

/* ChatScreenBLoC Events */

@freezed
class ChatScreenEvent with _$ChatScreenEvent {
  const ChatScreenEvent._();

  /// Create
  const factory ChatScreenEvent.send({required String? text}) =
      SendChatScreenEvent;

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
  const factory ChatScreenState.error({
    required final ChatScreenEntity? data,
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
    final ChatScreenEntity? chat,
  })  : _repository = repository,
        super(
          ChatScreenState.idle(
            data: ChatScreenEntity(),
          ),
        ) {
    on<ChatScreenEvent>(
      (event, emit) => event.maybeMap<Future<void>>(
        send: (event) => _sendMessage(event, emit),
        update: (event) => _update(event, emit),
        orElse: () async {},
      ),
      //transformer: bloc_concurrency.sequential(),
      //transformer: bloc_concurrency.restartable(),
      transformer: bloc_concurrency.droppable(),
      //transformer: bloc_concurrency.concurrent(),
    );
  }

  final IIoRepository _repository;

  /// Send message event handler
  Future<void> _sendMessage(
      SendChatScreenEvent event, Emitter<ChatScreenState> emit) async {
    try {
      final newData = await _repository.send({"text": event.text});
      emit(ChatScreenState.successful(data: newData));
    } on Object catch (err, stackTrace) {
      l.e('An error occurred in the ChatScreenBLoC: $err', stackTrace);
      emit(ChatScreenState.error(data: state.data));
      rethrow;
    }
  }

  Future<void> _update(
      UpdateChatScreenEvent event, Emitter<ChatScreenState> emit) async {
    try {
      final newData = await _repository.fetch({});
      emit(ChatScreenState.successful(data: newData));
    } on Object catch (err, stackTrace) {
      l.e('An error occurred in the ChatScreenBLoC: $err', stackTrace);
      emit(ChatScreenState.error(data: state.data));
      rethrow;
    }
  }
}

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kind_owl/common/domain/repo/i_io_repository.dart';

import 'chat_member_entity.dart';

part 'main_screen_bloc.freezed.dart';

/* MainScreenBLoC States */

@freezed
class MainScreenBLoCState with _$MainScreenBLoCState {
  const MainScreenBLoCState._();

  /// Idling state
  const factory MainScreenBLoCState.offChat({
    required final ChatMemberEntity? data,
    @Default('Idle') final String message,
  }) = OffChatMainScreenBLoCState;

  /// Processing
  const factory MainScreenBLoCState.processing({
    required final ChatMemberEntity? data,
    @Default('Processing') final String message,
  }) = ProcessingMainScreenBLoCState;

  /// Successful
  const factory MainScreenBLoCState.onChat({
    required final ChatMemberEntity? data,
    @Default('Successful') final String message,
  }) = OnChatMainScreenBLoCState;

  /// An error has occurred
  const factory MainScreenBLoCState.error({
    required final ChatMemberEntity? data,
    @Default('An error has occurred') final String message,
  }) = ErrorMainScreenBLoCState;

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

/* MainScreenBLoC Events */

@freezed
class MainScreenBLoCEvent with _$MainScreenBLoCEvent {
  const MainScreenBLoCEvent._();

  /// Create
  const factory MainScreenBLoCEvent.create() = CreateMainScreenBLoCEvent;

  /// Fetch
  const factory MainScreenBLoCEvent.fetch() = FetchMainScreenBLoCEvent;

  /// Update
  const factory MainScreenBLoCEvent.update() = UpdateMainScreenBLoCEvent;

  /// Delete
  const factory MainScreenBLoCEvent.delete() = DeleteMainScreenBLoCEvent;
}

/// Buisiness Logic Component MainScreenBLoC
class MainScreenBLoC extends Bloc<MainScreenBLoCEvent, MainScreenBLoCState>
    implements EventSink<MainScreenBLoCEvent> {
  MainScreenBLoC({
    required final IIoRepository repository,
    final MainScreenBLoCState? initialState,
  })  : _repository = repository,
        super(
          initialState ??
              MainScreenBLoCState.offChat(
                data: ChatMemberEntity(),
                message: 'Initial idle state',
              ),
        ) {
    on<MainScreenBLoCEvent>(
      (event, emit) => event.map<Future<void>>(
        create: (event) => _create(event, emit),
        fetch: (event) => _fetch(event, emit),
        update: (event) => _update(event, emit),
        delete: (event) => _delete(event, emit),
      ),
      transformer: bloc_concurrency.sequential(),
      //transformer: bloc_concurrency.restartable(),
      //transformer: bloc_concurrency.droppable(),
      //transformer: bloc_concurrency.concurrent(),
    );
  }

  final IIoRepository _repository;

  /// Fetch event handler
  Future<void> _fetch(
      FetchMainScreenBLoCEvent event, Emitter<MainScreenBLoCState> emit) async {
    try {
      emit(MainScreenBLoCState.processing(data: state.data));
      final newData = await _repository.fetch({});
      emit(MainScreenBLoCState.offChat(data: newData));
    } on Object catch (err, stackTrace) {
      //l.e('An error occurred in the MainScreenBLoC: $err', stackTrace);
      emit(MainScreenBLoCState.error(data: state.data));
      rethrow;
    } finally {
      //emit(MainScreenBLoCState.idle(data: state.data));
    }
  }

  Future<void> _create(CreateMainScreenBLoCEvent event,
      Emitter<MainScreenBLoCState> emit) async {}

  Future<void> _update(UpdateMainScreenBLoCEvent event,
      Emitter<MainScreenBLoCState> emit) async {}

  Future<void> _delete(DeleteMainScreenBLoCEvent event,
      Emitter<MainScreenBLoCState> emit) async {}
}

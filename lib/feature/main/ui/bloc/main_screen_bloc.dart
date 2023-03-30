import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/common/domain/repo/i_io_repository.dart';
import 'package:kind_owl/feature/main/domain/entities/main_screen_data_entity.dart';

part 'main_screen_bloc.freezed.dart';

/* MainScreenBLoC States */

@freezed
class MainScreenBLoCState with _$MainScreenBLoCState {
  const MainScreenBLoCState._();

  /// Idling state
  const factory MainScreenBLoCState.offChat({
    required final MainScreenDataEntity? data,
    @Default('off Chat') final String message,
  }) = OffChatMainScreenBLoCState;

  /// Processing
  const factory MainScreenBLoCState.processing({
    required final MainScreenDataEntity? data,
    @Default('Processing') final String message,
  }) = ProcessingMainScreenBLoCState;

  /// Successful
  const factory MainScreenBLoCState.onChat({
    required final MainScreenDataEntity? data,
    @Default('on Chat') final String message,
  }) = OnChatMainScreenBLoCState;

  /// An error has occurred
  const factory MainScreenBLoCState.error({
    required final MainScreenDataEntity? data,
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
  const factory MainScreenBLoCEvent.startChat({UserEntity? withUser}) =
      StartChatMainScreenBLoCEvent;

  /// Fetch
  const factory MainScreenBLoCEvent.fetch() = FetchMainScreenBLoCEvent;

  /// Update
  const factory MainScreenBLoCEvent.update() = UpdateMainScreenBLoCEvent;

  /// Delete
  const factory MainScreenBLoCEvent.delete() = DeleteMainScreenBLoCEvent;
}

/// Buisiness Logic Component MainScreenBLoC
//@injectable
class MainScreenBLoC extends Bloc<MainScreenBLoCEvent, MainScreenBLoCState>
    implements EventSink<MainScreenBLoCEvent> {
  MainScreenBLoC({
    required final IIoRepository repository,
    //@factoryParam
    final MainScreenBLoCState? initialState,
  })  : _repository = repository,
        super(
          initialState ??
              MainScreenBLoCState.offChat(
                data: MainScreenDataEntity(),
                message: 'Initial state',
              ),
        ) {
    on<MainScreenBLoCEvent>(
      (event, emit) => event.map<Future<void>>(
        startChat: (event) => _startChat(event, emit),
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
      final newData = await _repository.fetch();
      emit(MainScreenBLoCState.offChat(data: newData));
    } on Object catch (err, stackTrace) {
      //l.e('An error occurred in the MainScreenBLoC: $err', stackTrace);
      emit(MainScreenBLoCState.error(data: state.data));
      rethrow;
    } finally {
      //emit(MainScreenBLoCState.idle(data: state.data));
    }
  }

  Future<void> _startChat(StartChatMainScreenBLoCEvent event,
      Emitter<MainScreenBLoCState> emit) async {
    try {
      emit(MainScreenBLoCState.processing(data: state.data));

      final newData =
          state.data?.copyWith(users: List.filled(1, event.withUser));
      emit(MainScreenBLoCState.onChat(data: newData));
    } on Object catch (err, stackTrace) {
      //l.e('An error occurred in the MainScreenBLoC: $err', stackTrace);
      emit(MainScreenBLoCState.error(data: state.data));
      rethrow;
    } finally {
      //emit(MainScreenBLoCState.idle(data: state.data));
    }
  }

  Future<void> _update(UpdateMainScreenBLoCEvent event,
      Emitter<MainScreenBLoCState> emit) async {}

  Future<void> _delete(DeleteMainScreenBLoCEvent event,
      Emitter<MainScreenBLoCState> emit) async {}
}

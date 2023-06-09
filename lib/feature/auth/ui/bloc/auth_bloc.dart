import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/common/domain/repo/i_auth_repository.dart';

import 'package:l/l.dart';
part 'auth_bloc.freezed.dart';

/* AuthBloc Events */

@freezed
class AuthBlocEvent with _$AuthBlocEvent {
  const AuthBlocEvent._();

  /// Log In event
  const factory AuthBlocEvent.logIn(
      {required String email, required String password}) = LogInAuthBlocEvent;

  /// Log Out event
  const factory AuthBlocEvent.logOut() = LogOutAuthBlocEvent;

  /// Registrartion event
  const factory AuthBlocEvent.register(
      {required String email,
      required String password}) = RegisterAuthBlocEvent;
}

/* AuthBloc States */

@freezed
class AuthBlocState with _$AuthBlocState {
  const AuthBlocState._();

  /// Разлогинен
  const factory AuthBlocState.notAuthenticated({
    required final UserEntity? user,
    @Default('Idle') final String message,
  }) = NotAuthenticatedAuthBlocState;

  /// Не зарегистрирован
  const factory AuthBlocState.unregistered({
    required final UserEntity? user,
    @Default('Idle') final String message,
  }) = UnregisteredAuthBlocState;

  /// В обработке
  const factory AuthBlocState.processing({
    required final UserEntity? user,
    @Default('Processing') final String message,
  }) = ProcessingAuthBlocState;

  /// Залогинен
  const factory AuthBlocState.authenticated({
    required final UserEntity? user,
    @Default('Successful') final String message,
  }) = AuthenticatedAuthBlocState;

  /// An error has occurred
  const factory AuthBlocState.error({
    required final UserEntity? user,
    required final Object error,
    @Default('An error has occurred') final String message,
  }) = ErrorAuthBlocState;

  /// Has data
  //bool get hasUser => user != null;

  /// If an error has occurred
  bool get hasError => maybeMap<bool>(orElse: () => false, error: (_) => true);

  /// Is in progress state
  bool get isProcessing =>
      maybeMap<bool>(orElse: () => false, processing: (_) => true);
}

/// Buisiness Logic Component AuthBLoC

class AuthBLoC extends Bloc<AuthBlocEvent, AuthBlocState>
    implements EventSink<AuthBlocEvent> {
  AuthBLoC({
    required final IAuthRepository repository,
  })  : _repository = repository,
        super(AuthBlocState.notAuthenticated(user: UserEntity())) {
    on<AuthBlocEvent>(
      (event, emit) => event.map<Future<void>>(
        logIn: (event) => _logIn(event, emit),
        logOut: (event) => _logOut(event, emit),
        register: (event) => _register(event, emit),
      ),
      //transformer: bloc_concurrency.sequential(),
      //transformer: bloc_concurrency.restartable(),
      transformer: bloc_concurrency.droppable(),
      //transformer: bloc_concurrency.concurrent(),
    );
  }

  final IAuthRepository _repository;

  /// LogIn event handler
  Future<void> _logIn(
      LogInAuthBlocEvent event, Emitter<AuthBlocState> emit) async {
    try {
      emit(AuthBlocState.processing(user: state.user));
      final newData = await _repository.signIn(
        email: event.email,
        password: event.password,
      );
      emit(AuthBlocState.authenticated(user: newData));
    } on Object catch (err, stackTrace) {
      l.e('An error occurred in the AuthBLoC: $err', stackTrace);
      emit(AuthBlocState.error(user: state.user, error: err));
      rethrow;
    } finally {
      //emit(AuthState.idle(data: state.data));
    }
  }

  /// LogOut event handler
  Future<void> _logOut(
      LogOutAuthBlocEvent event, Emitter<AuthBlocState> emit) async {
    try {
      emit(AuthBlocState.processing(user: state.user));
      final newData = await _repository.signOut();
      emit(AuthBlocState.notAuthenticated(user: newData));
    } on Object catch (err, stackTrace) {
      l.e('An error occurred in the AuthBLoC: $err', stackTrace);
      emit(AuthBlocState.error(user: state.user, error: err));
      rethrow;
    } finally {
      //emit(AuthState.idle(data: state.data));
    }
  }

  /// LogIn event handler
  Future<void> _register(
      RegisterAuthBlocEvent event, Emitter<AuthBlocState> emit) async {
    try {
      emit(AuthBlocState.processing(user: state.user));
      final newData = await _repository.register(
        email: event.email,
        password: event.password,
      );
      emit(AuthBlocState.authenticated(user: newData));
    } on Object catch (err, stackTrace) {
      l.e('An error occurred in the AuthBLoC: $err', stackTrace);
      emit(AuthBlocState.unregistered(user: state.user));
      emit(AuthBlocState.error(user: state.user, error: err));
      rethrow;
    } finally {
      //emit(AuthState.idle(data: state.data));
    }
  }
}

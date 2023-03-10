// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
    required TResult Function(String email, String password) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
    TResult? Function(String email, String password)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    TResult Function(String email, String password)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInAuthBlocEvent value) logIn,
    required TResult Function(LogOutAuthBlocEvent value) logOut,
    required TResult Function(RegisterAuthBlocEvent value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogInAuthBlocEvent value)? logIn,
    TResult? Function(LogOutAuthBlocEvent value)? logOut,
    TResult? Function(RegisterAuthBlocEvent value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInAuthBlocEvent value)? logIn,
    TResult Function(LogOutAuthBlocEvent value)? logOut,
    TResult Function(RegisterAuthBlocEvent value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBlocEventCopyWith<$Res> {
  factory $AuthBlocEventCopyWith(
          AuthBlocEvent value, $Res Function(AuthBlocEvent) then) =
      _$AuthBlocEventCopyWithImpl<$Res, AuthBlocEvent>;
}

/// @nodoc
class _$AuthBlocEventCopyWithImpl<$Res, $Val extends AuthBlocEvent>
    implements $AuthBlocEventCopyWith<$Res> {
  _$AuthBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogInAuthBlocEventCopyWith<$Res> {
  factory _$$LogInAuthBlocEventCopyWith(_$LogInAuthBlocEvent value,
          $Res Function(_$LogInAuthBlocEvent) then) =
      __$$LogInAuthBlocEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LogInAuthBlocEventCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$LogInAuthBlocEvent>
    implements _$$LogInAuthBlocEventCopyWith<$Res> {
  __$$LogInAuthBlocEventCopyWithImpl(
      _$LogInAuthBlocEvent _value, $Res Function(_$LogInAuthBlocEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LogInAuthBlocEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogInAuthBlocEvent extends LogInAuthBlocEvent {
  const _$LogInAuthBlocEvent({required this.email, required this.password})
      : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthBlocEvent.logIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInAuthBlocEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInAuthBlocEventCopyWith<_$LogInAuthBlocEvent> get copyWith =>
      __$$LogInAuthBlocEventCopyWithImpl<_$LogInAuthBlocEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
    required TResult Function(String email, String password) register,
  }) {
    return logIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
    TResult? Function(String email, String password)? register,
  }) {
    return logIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    TResult Function(String email, String password)? register,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInAuthBlocEvent value) logIn,
    required TResult Function(LogOutAuthBlocEvent value) logOut,
    required TResult Function(RegisterAuthBlocEvent value) register,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogInAuthBlocEvent value)? logIn,
    TResult? Function(LogOutAuthBlocEvent value)? logOut,
    TResult? Function(RegisterAuthBlocEvent value)? register,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInAuthBlocEvent value)? logIn,
    TResult Function(LogOutAuthBlocEvent value)? logOut,
    TResult Function(RegisterAuthBlocEvent value)? register,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class LogInAuthBlocEvent extends AuthBlocEvent {
  const factory LogInAuthBlocEvent(
      {required final String email,
      required final String password}) = _$LogInAuthBlocEvent;
  const LogInAuthBlocEvent._() : super._();

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LogInAuthBlocEventCopyWith<_$LogInAuthBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutAuthBlocEventCopyWith<$Res> {
  factory _$$LogOutAuthBlocEventCopyWith(_$LogOutAuthBlocEvent value,
          $Res Function(_$LogOutAuthBlocEvent) then) =
      __$$LogOutAuthBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutAuthBlocEventCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$LogOutAuthBlocEvent>
    implements _$$LogOutAuthBlocEventCopyWith<$Res> {
  __$$LogOutAuthBlocEventCopyWithImpl(
      _$LogOutAuthBlocEvent _value, $Res Function(_$LogOutAuthBlocEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutAuthBlocEvent extends LogOutAuthBlocEvent {
  const _$LogOutAuthBlocEvent() : super._();

  @override
  String toString() {
    return 'AuthBlocEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutAuthBlocEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
    required TResult Function(String email, String password) register,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
    TResult? Function(String email, String password)? register,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    TResult Function(String email, String password)? register,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInAuthBlocEvent value) logIn,
    required TResult Function(LogOutAuthBlocEvent value) logOut,
    required TResult Function(RegisterAuthBlocEvent value) register,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogInAuthBlocEvent value)? logIn,
    TResult? Function(LogOutAuthBlocEvent value)? logOut,
    TResult? Function(RegisterAuthBlocEvent value)? register,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInAuthBlocEvent value)? logIn,
    TResult Function(LogOutAuthBlocEvent value)? logOut,
    TResult Function(RegisterAuthBlocEvent value)? register,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOutAuthBlocEvent extends AuthBlocEvent {
  const factory LogOutAuthBlocEvent() = _$LogOutAuthBlocEvent;
  const LogOutAuthBlocEvent._() : super._();
}

/// @nodoc
abstract class _$$RegisterAuthBlocEventCopyWith<$Res> {
  factory _$$RegisterAuthBlocEventCopyWith(_$RegisterAuthBlocEvent value,
          $Res Function(_$RegisterAuthBlocEvent) then) =
      __$$RegisterAuthBlocEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$RegisterAuthBlocEventCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$RegisterAuthBlocEvent>
    implements _$$RegisterAuthBlocEventCopyWith<$Res> {
  __$$RegisterAuthBlocEventCopyWithImpl(_$RegisterAuthBlocEvent _value,
      $Res Function(_$RegisterAuthBlocEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$RegisterAuthBlocEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterAuthBlocEvent extends RegisterAuthBlocEvent {
  const _$RegisterAuthBlocEvent({required this.email, required this.password})
      : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthBlocEvent.register(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterAuthBlocEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterAuthBlocEventCopyWith<_$RegisterAuthBlocEvent> get copyWith =>
      __$$RegisterAuthBlocEventCopyWithImpl<_$RegisterAuthBlocEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
    required TResult Function(String email, String password) register,
  }) {
    return register(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
    TResult? Function(String email, String password)? register,
  }) {
    return register?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    TResult Function(String email, String password)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInAuthBlocEvent value) logIn,
    required TResult Function(LogOutAuthBlocEvent value) logOut,
    required TResult Function(RegisterAuthBlocEvent value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogInAuthBlocEvent value)? logIn,
    TResult? Function(LogOutAuthBlocEvent value)? logOut,
    TResult? Function(RegisterAuthBlocEvent value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInAuthBlocEvent value)? logIn,
    TResult Function(LogOutAuthBlocEvent value)? logOut,
    TResult Function(RegisterAuthBlocEvent value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class RegisterAuthBlocEvent extends AuthBlocEvent {
  const factory RegisterAuthBlocEvent(
      {required final String email,
      required final String password}) = _$RegisterAuthBlocEvent;
  const RegisterAuthBlocEvent._() : super._();

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$RegisterAuthBlocEventCopyWith<_$RegisterAuthBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthBlocState {
  UserEntity? get user => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user, String message)
        notAuthenticated,
    required TResult Function(UserEntity? user, String message) unregistered,
    required TResult Function(UserEntity? user, String message) processing,
    required TResult Function(UserEntity? user, String message) authenticated,
    required TResult Function(UserEntity? user, Object error, String message)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user, String message)? notAuthenticated,
    TResult? Function(UserEntity? user, String message)? unregistered,
    TResult? Function(UserEntity? user, String message)? processing,
    TResult? Function(UserEntity? user, String message)? authenticated,
    TResult? Function(UserEntity? user, Object error, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user, String message)? notAuthenticated,
    TResult Function(UserEntity? user, String message)? unregistered,
    TResult Function(UserEntity? user, String message)? processing,
    TResult Function(UserEntity? user, String message)? authenticated,
    TResult Function(UserEntity? user, Object error, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthenticatedAuthBlocState value)
        notAuthenticated,
    required TResult Function(UnregisteredAuthBlocState value) unregistered,
    required TResult Function(ProcessingAuthBlocState value) processing,
    required TResult Function(AuthenticatedAuthBlocState value) authenticated,
    required TResult Function(ErrorAuthBlocState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotAuthenticatedAuthBlocState value)? notAuthenticated,
    TResult? Function(UnregisteredAuthBlocState value)? unregistered,
    TResult? Function(ProcessingAuthBlocState value)? processing,
    TResult? Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult? Function(ErrorAuthBlocState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthenticatedAuthBlocState value)? notAuthenticated,
    TResult Function(UnregisteredAuthBlocState value)? unregistered,
    TResult Function(ProcessingAuthBlocState value)? processing,
    TResult Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult Function(ErrorAuthBlocState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthBlocStateCopyWith<AuthBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBlocStateCopyWith<$Res> {
  factory $AuthBlocStateCopyWith(
          AuthBlocState value, $Res Function(AuthBlocState) then) =
      _$AuthBlocStateCopyWithImpl<$Res, AuthBlocState>;
  @useResult
  $Res call({UserEntity? user, String message});

  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthBlocStateCopyWithImpl<$Res, $Val extends AuthBlocState>
    implements $AuthBlocStateCopyWith<$Res> {
  _$AuthBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotAuthenticatedAuthBlocStateCopyWith<$Res>
    implements $AuthBlocStateCopyWith<$Res> {
  factory _$$NotAuthenticatedAuthBlocStateCopyWith(
          _$NotAuthenticatedAuthBlocState value,
          $Res Function(_$NotAuthenticatedAuthBlocState) then) =
      __$$NotAuthenticatedAuthBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity? user, String message});

  @override
  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$NotAuthenticatedAuthBlocStateCopyWithImpl<$Res>
    extends _$AuthBlocStateCopyWithImpl<$Res, _$NotAuthenticatedAuthBlocState>
    implements _$$NotAuthenticatedAuthBlocStateCopyWith<$Res> {
  __$$NotAuthenticatedAuthBlocStateCopyWithImpl(
      _$NotAuthenticatedAuthBlocState _value,
      $Res Function(_$NotAuthenticatedAuthBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? message = null,
  }) {
    return _then(_$NotAuthenticatedAuthBlocState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotAuthenticatedAuthBlocState extends NotAuthenticatedAuthBlocState {
  const _$NotAuthenticatedAuthBlocState(
      {required this.user, this.message = 'Idle'})
      : super._();

  @override
  final UserEntity? user;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthBlocState.notAuthenticated(user: $user, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotAuthenticatedAuthBlocState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotAuthenticatedAuthBlocStateCopyWith<_$NotAuthenticatedAuthBlocState>
      get copyWith => __$$NotAuthenticatedAuthBlocStateCopyWithImpl<
          _$NotAuthenticatedAuthBlocState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user, String message)
        notAuthenticated,
    required TResult Function(UserEntity? user, String message) unregistered,
    required TResult Function(UserEntity? user, String message) processing,
    required TResult Function(UserEntity? user, String message) authenticated,
    required TResult Function(UserEntity? user, Object error, String message)
        error,
  }) {
    return notAuthenticated(user, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user, String message)? notAuthenticated,
    TResult? Function(UserEntity? user, String message)? unregistered,
    TResult? Function(UserEntity? user, String message)? processing,
    TResult? Function(UserEntity? user, String message)? authenticated,
    TResult? Function(UserEntity? user, Object error, String message)? error,
  }) {
    return notAuthenticated?.call(user, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user, String message)? notAuthenticated,
    TResult Function(UserEntity? user, String message)? unregistered,
    TResult Function(UserEntity? user, String message)? processing,
    TResult Function(UserEntity? user, String message)? authenticated,
    TResult Function(UserEntity? user, Object error, String message)? error,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(user, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthenticatedAuthBlocState value)
        notAuthenticated,
    required TResult Function(UnregisteredAuthBlocState value) unregistered,
    required TResult Function(ProcessingAuthBlocState value) processing,
    required TResult Function(AuthenticatedAuthBlocState value) authenticated,
    required TResult Function(ErrorAuthBlocState value) error,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotAuthenticatedAuthBlocState value)? notAuthenticated,
    TResult? Function(UnregisteredAuthBlocState value)? unregistered,
    TResult? Function(ProcessingAuthBlocState value)? processing,
    TResult? Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult? Function(ErrorAuthBlocState value)? error,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthenticatedAuthBlocState value)? notAuthenticated,
    TResult Function(UnregisteredAuthBlocState value)? unregistered,
    TResult Function(ProcessingAuthBlocState value)? processing,
    TResult Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult Function(ErrorAuthBlocState value)? error,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class NotAuthenticatedAuthBlocState extends AuthBlocState {
  const factory NotAuthenticatedAuthBlocState(
      {required final UserEntity? user,
      final String message}) = _$NotAuthenticatedAuthBlocState;
  const NotAuthenticatedAuthBlocState._() : super._();

  @override
  UserEntity? get user;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NotAuthenticatedAuthBlocStateCopyWith<_$NotAuthenticatedAuthBlocState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnregisteredAuthBlocStateCopyWith<$Res>
    implements $AuthBlocStateCopyWith<$Res> {
  factory _$$UnregisteredAuthBlocStateCopyWith(
          _$UnregisteredAuthBlocState value,
          $Res Function(_$UnregisteredAuthBlocState) then) =
      __$$UnregisteredAuthBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity? user, String message});

  @override
  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UnregisteredAuthBlocStateCopyWithImpl<$Res>
    extends _$AuthBlocStateCopyWithImpl<$Res, _$UnregisteredAuthBlocState>
    implements _$$UnregisteredAuthBlocStateCopyWith<$Res> {
  __$$UnregisteredAuthBlocStateCopyWithImpl(_$UnregisteredAuthBlocState _value,
      $Res Function(_$UnregisteredAuthBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? message = null,
  }) {
    return _then(_$UnregisteredAuthBlocState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnregisteredAuthBlocState extends UnregisteredAuthBlocState {
  const _$UnregisteredAuthBlocState({required this.user, this.message = 'Idle'})
      : super._();

  @override
  final UserEntity? user;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthBlocState.unregistered(user: $user, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnregisteredAuthBlocState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnregisteredAuthBlocStateCopyWith<_$UnregisteredAuthBlocState>
      get copyWith => __$$UnregisteredAuthBlocStateCopyWithImpl<
          _$UnregisteredAuthBlocState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user, String message)
        notAuthenticated,
    required TResult Function(UserEntity? user, String message) unregistered,
    required TResult Function(UserEntity? user, String message) processing,
    required TResult Function(UserEntity? user, String message) authenticated,
    required TResult Function(UserEntity? user, Object error, String message)
        error,
  }) {
    return unregistered(user, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user, String message)? notAuthenticated,
    TResult? Function(UserEntity? user, String message)? unregistered,
    TResult? Function(UserEntity? user, String message)? processing,
    TResult? Function(UserEntity? user, String message)? authenticated,
    TResult? Function(UserEntity? user, Object error, String message)? error,
  }) {
    return unregistered?.call(user, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user, String message)? notAuthenticated,
    TResult Function(UserEntity? user, String message)? unregistered,
    TResult Function(UserEntity? user, String message)? processing,
    TResult Function(UserEntity? user, String message)? authenticated,
    TResult Function(UserEntity? user, Object error, String message)? error,
    required TResult orElse(),
  }) {
    if (unregistered != null) {
      return unregistered(user, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthenticatedAuthBlocState value)
        notAuthenticated,
    required TResult Function(UnregisteredAuthBlocState value) unregistered,
    required TResult Function(ProcessingAuthBlocState value) processing,
    required TResult Function(AuthenticatedAuthBlocState value) authenticated,
    required TResult Function(ErrorAuthBlocState value) error,
  }) {
    return unregistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotAuthenticatedAuthBlocState value)? notAuthenticated,
    TResult? Function(UnregisteredAuthBlocState value)? unregistered,
    TResult? Function(ProcessingAuthBlocState value)? processing,
    TResult? Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult? Function(ErrorAuthBlocState value)? error,
  }) {
    return unregistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthenticatedAuthBlocState value)? notAuthenticated,
    TResult Function(UnregisteredAuthBlocState value)? unregistered,
    TResult Function(ProcessingAuthBlocState value)? processing,
    TResult Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult Function(ErrorAuthBlocState value)? error,
    required TResult orElse(),
  }) {
    if (unregistered != null) {
      return unregistered(this);
    }
    return orElse();
  }
}

abstract class UnregisteredAuthBlocState extends AuthBlocState {
  const factory UnregisteredAuthBlocState(
      {required final UserEntity? user,
      final String message}) = _$UnregisteredAuthBlocState;
  const UnregisteredAuthBlocState._() : super._();

  @override
  UserEntity? get user;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnregisteredAuthBlocStateCopyWith<_$UnregisteredAuthBlocState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessingAuthBlocStateCopyWith<$Res>
    implements $AuthBlocStateCopyWith<$Res> {
  factory _$$ProcessingAuthBlocStateCopyWith(_$ProcessingAuthBlocState value,
          $Res Function(_$ProcessingAuthBlocState) then) =
      __$$ProcessingAuthBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity? user, String message});

  @override
  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ProcessingAuthBlocStateCopyWithImpl<$Res>
    extends _$AuthBlocStateCopyWithImpl<$Res, _$ProcessingAuthBlocState>
    implements _$$ProcessingAuthBlocStateCopyWith<$Res> {
  __$$ProcessingAuthBlocStateCopyWithImpl(_$ProcessingAuthBlocState _value,
      $Res Function(_$ProcessingAuthBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? message = null,
  }) {
    return _then(_$ProcessingAuthBlocState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProcessingAuthBlocState extends ProcessingAuthBlocState {
  const _$ProcessingAuthBlocState(
      {required this.user, this.message = 'Processing'})
      : super._();

  @override
  final UserEntity? user;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthBlocState.processing(user: $user, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessingAuthBlocState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessingAuthBlocStateCopyWith<_$ProcessingAuthBlocState> get copyWith =>
      __$$ProcessingAuthBlocStateCopyWithImpl<_$ProcessingAuthBlocState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user, String message)
        notAuthenticated,
    required TResult Function(UserEntity? user, String message) unregistered,
    required TResult Function(UserEntity? user, String message) processing,
    required TResult Function(UserEntity? user, String message) authenticated,
    required TResult Function(UserEntity? user, Object error, String message)
        error,
  }) {
    return processing(user, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user, String message)? notAuthenticated,
    TResult? Function(UserEntity? user, String message)? unregistered,
    TResult? Function(UserEntity? user, String message)? processing,
    TResult? Function(UserEntity? user, String message)? authenticated,
    TResult? Function(UserEntity? user, Object error, String message)? error,
  }) {
    return processing?.call(user, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user, String message)? notAuthenticated,
    TResult Function(UserEntity? user, String message)? unregistered,
    TResult Function(UserEntity? user, String message)? processing,
    TResult Function(UserEntity? user, String message)? authenticated,
    TResult Function(UserEntity? user, Object error, String message)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(user, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthenticatedAuthBlocState value)
        notAuthenticated,
    required TResult Function(UnregisteredAuthBlocState value) unregistered,
    required TResult Function(ProcessingAuthBlocState value) processing,
    required TResult Function(AuthenticatedAuthBlocState value) authenticated,
    required TResult Function(ErrorAuthBlocState value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotAuthenticatedAuthBlocState value)? notAuthenticated,
    TResult? Function(UnregisteredAuthBlocState value)? unregistered,
    TResult? Function(ProcessingAuthBlocState value)? processing,
    TResult? Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult? Function(ErrorAuthBlocState value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthenticatedAuthBlocState value)? notAuthenticated,
    TResult Function(UnregisteredAuthBlocState value)? unregistered,
    TResult Function(ProcessingAuthBlocState value)? processing,
    TResult Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult Function(ErrorAuthBlocState value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class ProcessingAuthBlocState extends AuthBlocState {
  const factory ProcessingAuthBlocState(
      {required final UserEntity? user,
      final String message}) = _$ProcessingAuthBlocState;
  const ProcessingAuthBlocState._() : super._();

  @override
  UserEntity? get user;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ProcessingAuthBlocStateCopyWith<_$ProcessingAuthBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatedAuthBlocStateCopyWith<$Res>
    implements $AuthBlocStateCopyWith<$Res> {
  factory _$$AuthenticatedAuthBlocStateCopyWith(
          _$AuthenticatedAuthBlocState value,
          $Res Function(_$AuthenticatedAuthBlocState) then) =
      __$$AuthenticatedAuthBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity? user, String message});

  @override
  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthenticatedAuthBlocStateCopyWithImpl<$Res>
    extends _$AuthBlocStateCopyWithImpl<$Res, _$AuthenticatedAuthBlocState>
    implements _$$AuthenticatedAuthBlocStateCopyWith<$Res> {
  __$$AuthenticatedAuthBlocStateCopyWithImpl(
      _$AuthenticatedAuthBlocState _value,
      $Res Function(_$AuthenticatedAuthBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? message = null,
  }) {
    return _then(_$AuthenticatedAuthBlocState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticatedAuthBlocState extends AuthenticatedAuthBlocState {
  const _$AuthenticatedAuthBlocState(
      {required this.user, this.message = 'Successful'})
      : super._();

  @override
  final UserEntity? user;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthBlocState.authenticated(user: $user, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedAuthBlocState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedAuthBlocStateCopyWith<_$AuthenticatedAuthBlocState>
      get copyWith => __$$AuthenticatedAuthBlocStateCopyWithImpl<
          _$AuthenticatedAuthBlocState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user, String message)
        notAuthenticated,
    required TResult Function(UserEntity? user, String message) unregistered,
    required TResult Function(UserEntity? user, String message) processing,
    required TResult Function(UserEntity? user, String message) authenticated,
    required TResult Function(UserEntity? user, Object error, String message)
        error,
  }) {
    return authenticated(user, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user, String message)? notAuthenticated,
    TResult? Function(UserEntity? user, String message)? unregistered,
    TResult? Function(UserEntity? user, String message)? processing,
    TResult? Function(UserEntity? user, String message)? authenticated,
    TResult? Function(UserEntity? user, Object error, String message)? error,
  }) {
    return authenticated?.call(user, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user, String message)? notAuthenticated,
    TResult Function(UserEntity? user, String message)? unregistered,
    TResult Function(UserEntity? user, String message)? processing,
    TResult Function(UserEntity? user, String message)? authenticated,
    TResult Function(UserEntity? user, Object error, String message)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthenticatedAuthBlocState value)
        notAuthenticated,
    required TResult Function(UnregisteredAuthBlocState value) unregistered,
    required TResult Function(ProcessingAuthBlocState value) processing,
    required TResult Function(AuthenticatedAuthBlocState value) authenticated,
    required TResult Function(ErrorAuthBlocState value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotAuthenticatedAuthBlocState value)? notAuthenticated,
    TResult? Function(UnregisteredAuthBlocState value)? unregistered,
    TResult? Function(ProcessingAuthBlocState value)? processing,
    TResult? Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult? Function(ErrorAuthBlocState value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthenticatedAuthBlocState value)? notAuthenticated,
    TResult Function(UnregisteredAuthBlocState value)? unregistered,
    TResult Function(ProcessingAuthBlocState value)? processing,
    TResult Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult Function(ErrorAuthBlocState value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedAuthBlocState extends AuthBlocState {
  const factory AuthenticatedAuthBlocState(
      {required final UserEntity? user,
      final String message}) = _$AuthenticatedAuthBlocState;
  const AuthenticatedAuthBlocState._() : super._();

  @override
  UserEntity? get user;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticatedAuthBlocStateCopyWith<_$AuthenticatedAuthBlocState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorAuthBlocStateCopyWith<$Res>
    implements $AuthBlocStateCopyWith<$Res> {
  factory _$$ErrorAuthBlocStateCopyWith(_$ErrorAuthBlocState value,
          $Res Function(_$ErrorAuthBlocState) then) =
      __$$ErrorAuthBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity? user, Object error, String message});

  @override
  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ErrorAuthBlocStateCopyWithImpl<$Res>
    extends _$AuthBlocStateCopyWithImpl<$Res, _$ErrorAuthBlocState>
    implements _$$ErrorAuthBlocStateCopyWith<$Res> {
  __$$ErrorAuthBlocStateCopyWithImpl(
      _$ErrorAuthBlocState _value, $Res Function(_$ErrorAuthBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? error = null,
    Object? message = null,
  }) {
    return _then(_$ErrorAuthBlocState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      error: null == error ? _value.error : error,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorAuthBlocState extends ErrorAuthBlocState {
  const _$ErrorAuthBlocState(
      {required this.user,
      required this.error,
      this.message = 'An error has occurred'})
      : super._();

  @override
  final UserEntity? user;
  @override
  final Object error;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthBlocState.error(user: $user, error: $error, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAuthBlocState &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, const DeepCollectionEquality().hash(error), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAuthBlocStateCopyWith<_$ErrorAuthBlocState> get copyWith =>
      __$$ErrorAuthBlocStateCopyWithImpl<_$ErrorAuthBlocState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user, String message)
        notAuthenticated,
    required TResult Function(UserEntity? user, String message) unregistered,
    required TResult Function(UserEntity? user, String message) processing,
    required TResult Function(UserEntity? user, String message) authenticated,
    required TResult Function(UserEntity? user, Object error, String message)
        error,
  }) {
    return error(user, this.error, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user, String message)? notAuthenticated,
    TResult? Function(UserEntity? user, String message)? unregistered,
    TResult? Function(UserEntity? user, String message)? processing,
    TResult? Function(UserEntity? user, String message)? authenticated,
    TResult? Function(UserEntity? user, Object error, String message)? error,
  }) {
    return error?.call(user, this.error, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user, String message)? notAuthenticated,
    TResult Function(UserEntity? user, String message)? unregistered,
    TResult Function(UserEntity? user, String message)? processing,
    TResult Function(UserEntity? user, String message)? authenticated,
    TResult Function(UserEntity? user, Object error, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(user, this.error, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthenticatedAuthBlocState value)
        notAuthenticated,
    required TResult Function(UnregisteredAuthBlocState value) unregistered,
    required TResult Function(ProcessingAuthBlocState value) processing,
    required TResult Function(AuthenticatedAuthBlocState value) authenticated,
    required TResult Function(ErrorAuthBlocState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotAuthenticatedAuthBlocState value)? notAuthenticated,
    TResult? Function(UnregisteredAuthBlocState value)? unregistered,
    TResult? Function(ProcessingAuthBlocState value)? processing,
    TResult? Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult? Function(ErrorAuthBlocState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthenticatedAuthBlocState value)? notAuthenticated,
    TResult Function(UnregisteredAuthBlocState value)? unregistered,
    TResult Function(ProcessingAuthBlocState value)? processing,
    TResult Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult Function(ErrorAuthBlocState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorAuthBlocState extends AuthBlocState {
  const factory ErrorAuthBlocState(
      {required final UserEntity? user,
      required final Object error,
      final String message}) = _$ErrorAuthBlocState;
  const ErrorAuthBlocState._() : super._();

  @override
  UserEntity? get user;
  Object get error;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorAuthBlocStateCopyWith<_$ErrorAuthBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

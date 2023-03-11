// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainScreenBLoCState {
  ChatMemberEntity? get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMemberEntity? data, String message) offChat,
    required TResult Function(ChatMemberEntity? data, String message)
        processing,
    required TResult Function(ChatMemberEntity? data, String message) onChat,
    required TResult Function(ChatMemberEntity? data, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMemberEntity? data, String message)? offChat,
    TResult? Function(ChatMemberEntity? data, String message)? processing,
    TResult? Function(ChatMemberEntity? data, String message)? onChat,
    TResult? Function(ChatMemberEntity? data, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMemberEntity? data, String message)? offChat,
    TResult Function(ChatMemberEntity? data, String message)? processing,
    TResult Function(ChatMemberEntity? data, String message)? onChat,
    TResult Function(ChatMemberEntity? data, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OffChatMainScreenBLoCState value) offChat,
    required TResult Function(ProcessingMainScreenBLoCState value) processing,
    required TResult Function(OnChatMainScreenBLoCState value) onChat,
    required TResult Function(ErrorMainScreenBLoCState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OffChatMainScreenBLoCState value)? offChat,
    TResult? Function(ProcessingMainScreenBLoCState value)? processing,
    TResult? Function(OnChatMainScreenBLoCState value)? onChat,
    TResult? Function(ErrorMainScreenBLoCState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OffChatMainScreenBLoCState value)? offChat,
    TResult Function(ProcessingMainScreenBLoCState value)? processing,
    TResult Function(OnChatMainScreenBLoCState value)? onChat,
    TResult Function(ErrorMainScreenBLoCState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainScreenBLoCStateCopyWith<MainScreenBLoCState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenBLoCStateCopyWith<$Res> {
  factory $MainScreenBLoCStateCopyWith(
          MainScreenBLoCState value, $Res Function(MainScreenBLoCState) then) =
      _$MainScreenBLoCStateCopyWithImpl<$Res, MainScreenBLoCState>;
  @useResult
  $Res call({ChatMemberEntity? data, String message});

  $ChatMemberEntityCopyWith<$Res>? get data;
}

/// @nodoc
class _$MainScreenBLoCStateCopyWithImpl<$Res, $Val extends MainScreenBLoCState>
    implements $MainScreenBLoCStateCopyWith<$Res> {
  _$MainScreenBLoCStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatMemberEntity?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatMemberEntityCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ChatMemberEntityCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OffChatMainScreenBLoCStateCopyWith<$Res>
    implements $MainScreenBLoCStateCopyWith<$Res> {
  factory _$$OffChatMainScreenBLoCStateCopyWith(
          _$OffChatMainScreenBLoCState value,
          $Res Function(_$OffChatMainScreenBLoCState) then) =
      __$$OffChatMainScreenBLoCStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatMemberEntity? data, String message});

  @override
  $ChatMemberEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$OffChatMainScreenBLoCStateCopyWithImpl<$Res>
    extends _$MainScreenBLoCStateCopyWithImpl<$Res,
        _$OffChatMainScreenBLoCState>
    implements _$$OffChatMainScreenBLoCStateCopyWith<$Res> {
  __$$OffChatMainScreenBLoCStateCopyWithImpl(
      _$OffChatMainScreenBLoCState _value,
      $Res Function(_$OffChatMainScreenBLoCState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = null,
  }) {
    return _then(_$OffChatMainScreenBLoCState(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatMemberEntity?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OffChatMainScreenBLoCState extends OffChatMainScreenBLoCState {
  const _$OffChatMainScreenBLoCState(
      {required this.data, this.message = 'Idle'})
      : super._();

  @override
  final ChatMemberEntity? data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MainScreenBLoCState.offChat(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffChatMainScreenBLoCState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffChatMainScreenBLoCStateCopyWith<_$OffChatMainScreenBLoCState>
      get copyWith => __$$OffChatMainScreenBLoCStateCopyWithImpl<
          _$OffChatMainScreenBLoCState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMemberEntity? data, String message) offChat,
    required TResult Function(ChatMemberEntity? data, String message)
        processing,
    required TResult Function(ChatMemberEntity? data, String message) onChat,
    required TResult Function(ChatMemberEntity? data, String message) error,
  }) {
    return offChat(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMemberEntity? data, String message)? offChat,
    TResult? Function(ChatMemberEntity? data, String message)? processing,
    TResult? Function(ChatMemberEntity? data, String message)? onChat,
    TResult? Function(ChatMemberEntity? data, String message)? error,
  }) {
    return offChat?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMemberEntity? data, String message)? offChat,
    TResult Function(ChatMemberEntity? data, String message)? processing,
    TResult Function(ChatMemberEntity? data, String message)? onChat,
    TResult Function(ChatMemberEntity? data, String message)? error,
    required TResult orElse(),
  }) {
    if (offChat != null) {
      return offChat(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OffChatMainScreenBLoCState value) offChat,
    required TResult Function(ProcessingMainScreenBLoCState value) processing,
    required TResult Function(OnChatMainScreenBLoCState value) onChat,
    required TResult Function(ErrorMainScreenBLoCState value) error,
  }) {
    return offChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OffChatMainScreenBLoCState value)? offChat,
    TResult? Function(ProcessingMainScreenBLoCState value)? processing,
    TResult? Function(OnChatMainScreenBLoCState value)? onChat,
    TResult? Function(ErrorMainScreenBLoCState value)? error,
  }) {
    return offChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OffChatMainScreenBLoCState value)? offChat,
    TResult Function(ProcessingMainScreenBLoCState value)? processing,
    TResult Function(OnChatMainScreenBLoCState value)? onChat,
    TResult Function(ErrorMainScreenBLoCState value)? error,
    required TResult orElse(),
  }) {
    if (offChat != null) {
      return offChat(this);
    }
    return orElse();
  }
}

abstract class OffChatMainScreenBLoCState extends MainScreenBLoCState {
  const factory OffChatMainScreenBLoCState(
      {required final ChatMemberEntity? data,
      final String message}) = _$OffChatMainScreenBLoCState;
  const OffChatMainScreenBLoCState._() : super._();

  @override
  ChatMemberEntity? get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$OffChatMainScreenBLoCStateCopyWith<_$OffChatMainScreenBLoCState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessingMainScreenBLoCStateCopyWith<$Res>
    implements $MainScreenBLoCStateCopyWith<$Res> {
  factory _$$ProcessingMainScreenBLoCStateCopyWith(
          _$ProcessingMainScreenBLoCState value,
          $Res Function(_$ProcessingMainScreenBLoCState) then) =
      __$$ProcessingMainScreenBLoCStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatMemberEntity? data, String message});

  @override
  $ChatMemberEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProcessingMainScreenBLoCStateCopyWithImpl<$Res>
    extends _$MainScreenBLoCStateCopyWithImpl<$Res,
        _$ProcessingMainScreenBLoCState>
    implements _$$ProcessingMainScreenBLoCStateCopyWith<$Res> {
  __$$ProcessingMainScreenBLoCStateCopyWithImpl(
      _$ProcessingMainScreenBLoCState _value,
      $Res Function(_$ProcessingMainScreenBLoCState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = null,
  }) {
    return _then(_$ProcessingMainScreenBLoCState(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatMemberEntity?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProcessingMainScreenBLoCState extends ProcessingMainScreenBLoCState {
  const _$ProcessingMainScreenBLoCState(
      {required this.data, this.message = 'Processing'})
      : super._();

  @override
  final ChatMemberEntity? data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MainScreenBLoCState.processing(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessingMainScreenBLoCState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessingMainScreenBLoCStateCopyWith<_$ProcessingMainScreenBLoCState>
      get copyWith => __$$ProcessingMainScreenBLoCStateCopyWithImpl<
          _$ProcessingMainScreenBLoCState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMemberEntity? data, String message) offChat,
    required TResult Function(ChatMemberEntity? data, String message)
        processing,
    required TResult Function(ChatMemberEntity? data, String message) onChat,
    required TResult Function(ChatMemberEntity? data, String message) error,
  }) {
    return processing(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMemberEntity? data, String message)? offChat,
    TResult? Function(ChatMemberEntity? data, String message)? processing,
    TResult? Function(ChatMemberEntity? data, String message)? onChat,
    TResult? Function(ChatMemberEntity? data, String message)? error,
  }) {
    return processing?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMemberEntity? data, String message)? offChat,
    TResult Function(ChatMemberEntity? data, String message)? processing,
    TResult Function(ChatMemberEntity? data, String message)? onChat,
    TResult Function(ChatMemberEntity? data, String message)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OffChatMainScreenBLoCState value) offChat,
    required TResult Function(ProcessingMainScreenBLoCState value) processing,
    required TResult Function(OnChatMainScreenBLoCState value) onChat,
    required TResult Function(ErrorMainScreenBLoCState value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OffChatMainScreenBLoCState value)? offChat,
    TResult? Function(ProcessingMainScreenBLoCState value)? processing,
    TResult? Function(OnChatMainScreenBLoCState value)? onChat,
    TResult? Function(ErrorMainScreenBLoCState value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OffChatMainScreenBLoCState value)? offChat,
    TResult Function(ProcessingMainScreenBLoCState value)? processing,
    TResult Function(OnChatMainScreenBLoCState value)? onChat,
    TResult Function(ErrorMainScreenBLoCState value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class ProcessingMainScreenBLoCState extends MainScreenBLoCState {
  const factory ProcessingMainScreenBLoCState(
      {required final ChatMemberEntity? data,
      final String message}) = _$ProcessingMainScreenBLoCState;
  const ProcessingMainScreenBLoCState._() : super._();

  @override
  ChatMemberEntity? get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ProcessingMainScreenBLoCStateCopyWith<_$ProcessingMainScreenBLoCState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnChatMainScreenBLoCStateCopyWith<$Res>
    implements $MainScreenBLoCStateCopyWith<$Res> {
  factory _$$OnChatMainScreenBLoCStateCopyWith(
          _$OnChatMainScreenBLoCState value,
          $Res Function(_$OnChatMainScreenBLoCState) then) =
      __$$OnChatMainScreenBLoCStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatMemberEntity? data, String message});

  @override
  $ChatMemberEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$OnChatMainScreenBLoCStateCopyWithImpl<$Res>
    extends _$MainScreenBLoCStateCopyWithImpl<$Res, _$OnChatMainScreenBLoCState>
    implements _$$OnChatMainScreenBLoCStateCopyWith<$Res> {
  __$$OnChatMainScreenBLoCStateCopyWithImpl(_$OnChatMainScreenBLoCState _value,
      $Res Function(_$OnChatMainScreenBLoCState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = null,
  }) {
    return _then(_$OnChatMainScreenBLoCState(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatMemberEntity?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnChatMainScreenBLoCState extends OnChatMainScreenBLoCState {
  const _$OnChatMainScreenBLoCState(
      {required this.data, this.message = 'Successful'})
      : super._();

  @override
  final ChatMemberEntity? data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MainScreenBLoCState.onChat(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChatMainScreenBLoCState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChatMainScreenBLoCStateCopyWith<_$OnChatMainScreenBLoCState>
      get copyWith => __$$OnChatMainScreenBLoCStateCopyWithImpl<
          _$OnChatMainScreenBLoCState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMemberEntity? data, String message) offChat,
    required TResult Function(ChatMemberEntity? data, String message)
        processing,
    required TResult Function(ChatMemberEntity? data, String message) onChat,
    required TResult Function(ChatMemberEntity? data, String message) error,
  }) {
    return onChat(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMemberEntity? data, String message)? offChat,
    TResult? Function(ChatMemberEntity? data, String message)? processing,
    TResult? Function(ChatMemberEntity? data, String message)? onChat,
    TResult? Function(ChatMemberEntity? data, String message)? error,
  }) {
    return onChat?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMemberEntity? data, String message)? offChat,
    TResult Function(ChatMemberEntity? data, String message)? processing,
    TResult Function(ChatMemberEntity? data, String message)? onChat,
    TResult Function(ChatMemberEntity? data, String message)? error,
    required TResult orElse(),
  }) {
    if (onChat != null) {
      return onChat(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OffChatMainScreenBLoCState value) offChat,
    required TResult Function(ProcessingMainScreenBLoCState value) processing,
    required TResult Function(OnChatMainScreenBLoCState value) onChat,
    required TResult Function(ErrorMainScreenBLoCState value) error,
  }) {
    return onChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OffChatMainScreenBLoCState value)? offChat,
    TResult? Function(ProcessingMainScreenBLoCState value)? processing,
    TResult? Function(OnChatMainScreenBLoCState value)? onChat,
    TResult? Function(ErrorMainScreenBLoCState value)? error,
  }) {
    return onChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OffChatMainScreenBLoCState value)? offChat,
    TResult Function(ProcessingMainScreenBLoCState value)? processing,
    TResult Function(OnChatMainScreenBLoCState value)? onChat,
    TResult Function(ErrorMainScreenBLoCState value)? error,
    required TResult orElse(),
  }) {
    if (onChat != null) {
      return onChat(this);
    }
    return orElse();
  }
}

abstract class OnChatMainScreenBLoCState extends MainScreenBLoCState {
  const factory OnChatMainScreenBLoCState(
      {required final ChatMemberEntity? data,
      final String message}) = _$OnChatMainScreenBLoCState;
  const OnChatMainScreenBLoCState._() : super._();

  @override
  ChatMemberEntity? get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$OnChatMainScreenBLoCStateCopyWith<_$OnChatMainScreenBLoCState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorMainScreenBLoCStateCopyWith<$Res>
    implements $MainScreenBLoCStateCopyWith<$Res> {
  factory _$$ErrorMainScreenBLoCStateCopyWith(_$ErrorMainScreenBLoCState value,
          $Res Function(_$ErrorMainScreenBLoCState) then) =
      __$$ErrorMainScreenBLoCStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatMemberEntity? data, String message});

  @override
  $ChatMemberEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ErrorMainScreenBLoCStateCopyWithImpl<$Res>
    extends _$MainScreenBLoCStateCopyWithImpl<$Res, _$ErrorMainScreenBLoCState>
    implements _$$ErrorMainScreenBLoCStateCopyWith<$Res> {
  __$$ErrorMainScreenBLoCStateCopyWithImpl(_$ErrorMainScreenBLoCState _value,
      $Res Function(_$ErrorMainScreenBLoCState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = null,
  }) {
    return _then(_$ErrorMainScreenBLoCState(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatMemberEntity?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorMainScreenBLoCState extends ErrorMainScreenBLoCState {
  const _$ErrorMainScreenBLoCState(
      {required this.data, this.message = 'An error has occurred'})
      : super._();

  @override
  final ChatMemberEntity? data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MainScreenBLoCState.error(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMainScreenBLoCState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMainScreenBLoCStateCopyWith<_$ErrorMainScreenBLoCState>
      get copyWith =>
          __$$ErrorMainScreenBLoCStateCopyWithImpl<_$ErrorMainScreenBLoCState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMemberEntity? data, String message) offChat,
    required TResult Function(ChatMemberEntity? data, String message)
        processing,
    required TResult Function(ChatMemberEntity? data, String message) onChat,
    required TResult Function(ChatMemberEntity? data, String message) error,
  }) {
    return error(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMemberEntity? data, String message)? offChat,
    TResult? Function(ChatMemberEntity? data, String message)? processing,
    TResult? Function(ChatMemberEntity? data, String message)? onChat,
    TResult? Function(ChatMemberEntity? data, String message)? error,
  }) {
    return error?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMemberEntity? data, String message)? offChat,
    TResult Function(ChatMemberEntity? data, String message)? processing,
    TResult Function(ChatMemberEntity? data, String message)? onChat,
    TResult Function(ChatMemberEntity? data, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OffChatMainScreenBLoCState value) offChat,
    required TResult Function(ProcessingMainScreenBLoCState value) processing,
    required TResult Function(OnChatMainScreenBLoCState value) onChat,
    required TResult Function(ErrorMainScreenBLoCState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OffChatMainScreenBLoCState value)? offChat,
    TResult? Function(ProcessingMainScreenBLoCState value)? processing,
    TResult? Function(OnChatMainScreenBLoCState value)? onChat,
    TResult? Function(ErrorMainScreenBLoCState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OffChatMainScreenBLoCState value)? offChat,
    TResult Function(ProcessingMainScreenBLoCState value)? processing,
    TResult Function(OnChatMainScreenBLoCState value)? onChat,
    TResult Function(ErrorMainScreenBLoCState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMainScreenBLoCState extends MainScreenBLoCState {
  const factory ErrorMainScreenBLoCState(
      {required final ChatMemberEntity? data,
      final String message}) = _$ErrorMainScreenBLoCState;
  const ErrorMainScreenBLoCState._() : super._();

  @override
  ChatMemberEntity? get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorMainScreenBLoCStateCopyWith<_$ErrorMainScreenBLoCState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainScreenBLoCEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() fetch,
    required TResult Function() update,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function()? fetch,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? fetch,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateMainScreenBLoCEvent value) create,
    required TResult Function(FetchMainScreenBLoCEvent value) fetch,
    required TResult Function(UpdateMainScreenBLoCEvent value) update,
    required TResult Function(DeleteMainScreenBLoCEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateMainScreenBLoCEvent value)? create,
    TResult? Function(FetchMainScreenBLoCEvent value)? fetch,
    TResult? Function(UpdateMainScreenBLoCEvent value)? update,
    TResult? Function(DeleteMainScreenBLoCEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateMainScreenBLoCEvent value)? create,
    TResult Function(FetchMainScreenBLoCEvent value)? fetch,
    TResult Function(UpdateMainScreenBLoCEvent value)? update,
    TResult Function(DeleteMainScreenBLoCEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenBLoCEventCopyWith<$Res> {
  factory $MainScreenBLoCEventCopyWith(
          MainScreenBLoCEvent value, $Res Function(MainScreenBLoCEvent) then) =
      _$MainScreenBLoCEventCopyWithImpl<$Res, MainScreenBLoCEvent>;
}

/// @nodoc
class _$MainScreenBLoCEventCopyWithImpl<$Res, $Val extends MainScreenBLoCEvent>
    implements $MainScreenBLoCEventCopyWith<$Res> {
  _$MainScreenBLoCEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateMainScreenBLoCEventCopyWith<$Res> {
  factory _$$CreateMainScreenBLoCEventCopyWith(
          _$CreateMainScreenBLoCEvent value,
          $Res Function(_$CreateMainScreenBLoCEvent) then) =
      __$$CreateMainScreenBLoCEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateMainScreenBLoCEventCopyWithImpl<$Res>
    extends _$MainScreenBLoCEventCopyWithImpl<$Res, _$CreateMainScreenBLoCEvent>
    implements _$$CreateMainScreenBLoCEventCopyWith<$Res> {
  __$$CreateMainScreenBLoCEventCopyWithImpl(_$CreateMainScreenBLoCEvent _value,
      $Res Function(_$CreateMainScreenBLoCEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateMainScreenBLoCEvent extends CreateMainScreenBLoCEvent {
  const _$CreateMainScreenBLoCEvent() : super._();

  @override
  String toString() {
    return 'MainScreenBLoCEvent.create()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMainScreenBLoCEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() fetch,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function()? fetch,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? fetch,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateMainScreenBLoCEvent value) create,
    required TResult Function(FetchMainScreenBLoCEvent value) fetch,
    required TResult Function(UpdateMainScreenBLoCEvent value) update,
    required TResult Function(DeleteMainScreenBLoCEvent value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateMainScreenBLoCEvent value)? create,
    TResult? Function(FetchMainScreenBLoCEvent value)? fetch,
    TResult? Function(UpdateMainScreenBLoCEvent value)? update,
    TResult? Function(DeleteMainScreenBLoCEvent value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateMainScreenBLoCEvent value)? create,
    TResult Function(FetchMainScreenBLoCEvent value)? fetch,
    TResult Function(UpdateMainScreenBLoCEvent value)? update,
    TResult Function(DeleteMainScreenBLoCEvent value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CreateMainScreenBLoCEvent extends MainScreenBLoCEvent {
  const factory CreateMainScreenBLoCEvent() = _$CreateMainScreenBLoCEvent;
  const CreateMainScreenBLoCEvent._() : super._();
}

/// @nodoc
abstract class _$$FetchMainScreenBLoCEventCopyWith<$Res> {
  factory _$$FetchMainScreenBLoCEventCopyWith(_$FetchMainScreenBLoCEvent value,
          $Res Function(_$FetchMainScreenBLoCEvent) then) =
      __$$FetchMainScreenBLoCEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMainScreenBLoCEventCopyWithImpl<$Res>
    extends _$MainScreenBLoCEventCopyWithImpl<$Res, _$FetchMainScreenBLoCEvent>
    implements _$$FetchMainScreenBLoCEventCopyWith<$Res> {
  __$$FetchMainScreenBLoCEventCopyWithImpl(_$FetchMainScreenBLoCEvent _value,
      $Res Function(_$FetchMainScreenBLoCEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchMainScreenBLoCEvent extends FetchMainScreenBLoCEvent {
  const _$FetchMainScreenBLoCEvent() : super._();

  @override
  String toString() {
    return 'MainScreenBLoCEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMainScreenBLoCEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() fetch,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function()? fetch,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? fetch,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateMainScreenBLoCEvent value) create,
    required TResult Function(FetchMainScreenBLoCEvent value) fetch,
    required TResult Function(UpdateMainScreenBLoCEvent value) update,
    required TResult Function(DeleteMainScreenBLoCEvent value) delete,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateMainScreenBLoCEvent value)? create,
    TResult? Function(FetchMainScreenBLoCEvent value)? fetch,
    TResult? Function(UpdateMainScreenBLoCEvent value)? update,
    TResult? Function(DeleteMainScreenBLoCEvent value)? delete,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateMainScreenBLoCEvent value)? create,
    TResult Function(FetchMainScreenBLoCEvent value)? fetch,
    TResult Function(UpdateMainScreenBLoCEvent value)? update,
    TResult Function(DeleteMainScreenBLoCEvent value)? delete,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchMainScreenBLoCEvent extends MainScreenBLoCEvent {
  const factory FetchMainScreenBLoCEvent() = _$FetchMainScreenBLoCEvent;
  const FetchMainScreenBLoCEvent._() : super._();
}

/// @nodoc
abstract class _$$UpdateMainScreenBLoCEventCopyWith<$Res> {
  factory _$$UpdateMainScreenBLoCEventCopyWith(
          _$UpdateMainScreenBLoCEvent value,
          $Res Function(_$UpdateMainScreenBLoCEvent) then) =
      __$$UpdateMainScreenBLoCEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateMainScreenBLoCEventCopyWithImpl<$Res>
    extends _$MainScreenBLoCEventCopyWithImpl<$Res, _$UpdateMainScreenBLoCEvent>
    implements _$$UpdateMainScreenBLoCEventCopyWith<$Res> {
  __$$UpdateMainScreenBLoCEventCopyWithImpl(_$UpdateMainScreenBLoCEvent _value,
      $Res Function(_$UpdateMainScreenBLoCEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateMainScreenBLoCEvent extends UpdateMainScreenBLoCEvent {
  const _$UpdateMainScreenBLoCEvent() : super._();

  @override
  String toString() {
    return 'MainScreenBLoCEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMainScreenBLoCEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() fetch,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function()? fetch,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? fetch,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateMainScreenBLoCEvent value) create,
    required TResult Function(FetchMainScreenBLoCEvent value) fetch,
    required TResult Function(UpdateMainScreenBLoCEvent value) update,
    required TResult Function(DeleteMainScreenBLoCEvent value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateMainScreenBLoCEvent value)? create,
    TResult? Function(FetchMainScreenBLoCEvent value)? fetch,
    TResult? Function(UpdateMainScreenBLoCEvent value)? update,
    TResult? Function(DeleteMainScreenBLoCEvent value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateMainScreenBLoCEvent value)? create,
    TResult Function(FetchMainScreenBLoCEvent value)? fetch,
    TResult Function(UpdateMainScreenBLoCEvent value)? update,
    TResult Function(DeleteMainScreenBLoCEvent value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateMainScreenBLoCEvent extends MainScreenBLoCEvent {
  const factory UpdateMainScreenBLoCEvent() = _$UpdateMainScreenBLoCEvent;
  const UpdateMainScreenBLoCEvent._() : super._();
}

/// @nodoc
abstract class _$$DeleteMainScreenBLoCEventCopyWith<$Res> {
  factory _$$DeleteMainScreenBLoCEventCopyWith(
          _$DeleteMainScreenBLoCEvent value,
          $Res Function(_$DeleteMainScreenBLoCEvent) then) =
      __$$DeleteMainScreenBLoCEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteMainScreenBLoCEventCopyWithImpl<$Res>
    extends _$MainScreenBLoCEventCopyWithImpl<$Res, _$DeleteMainScreenBLoCEvent>
    implements _$$DeleteMainScreenBLoCEventCopyWith<$Res> {
  __$$DeleteMainScreenBLoCEventCopyWithImpl(_$DeleteMainScreenBLoCEvent _value,
      $Res Function(_$DeleteMainScreenBLoCEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteMainScreenBLoCEvent extends DeleteMainScreenBLoCEvent {
  const _$DeleteMainScreenBLoCEvent() : super._();

  @override
  String toString() {
    return 'MainScreenBLoCEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMainScreenBLoCEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() fetch,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function()? fetch,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? fetch,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateMainScreenBLoCEvent value) create,
    required TResult Function(FetchMainScreenBLoCEvent value) fetch,
    required TResult Function(UpdateMainScreenBLoCEvent value) update,
    required TResult Function(DeleteMainScreenBLoCEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateMainScreenBLoCEvent value)? create,
    TResult? Function(FetchMainScreenBLoCEvent value)? fetch,
    TResult? Function(UpdateMainScreenBLoCEvent value)? update,
    TResult? Function(DeleteMainScreenBLoCEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateMainScreenBLoCEvent value)? create,
    TResult Function(FetchMainScreenBLoCEvent value)? fetch,
    TResult Function(UpdateMainScreenBLoCEvent value)? update,
    TResult Function(DeleteMainScreenBLoCEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteMainScreenBLoCEvent extends MainScreenBLoCEvent {
  const factory DeleteMainScreenBLoCEvent() = _$DeleteMainScreenBLoCEvent;
  const DeleteMainScreenBLoCEvent._() : super._();
}

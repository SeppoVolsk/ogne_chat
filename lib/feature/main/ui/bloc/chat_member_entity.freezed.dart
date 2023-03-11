// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_member_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMemberEntity _$ChatMemberEntityFromJson(Map<String, dynamic> json) {
  return _ChatMemberEntity.fromJson(json);
}

/// @nodoc
mixin _$ChatMemberEntity {
  String? get uid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMemberEntityCopyWith<ChatMemberEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMemberEntityCopyWith<$Res> {
  factory $ChatMemberEntityCopyWith(
          ChatMemberEntity value, $Res Function(ChatMemberEntity) then) =
      _$ChatMemberEntityCopyWithImpl<$Res, ChatMemberEntity>;
  @useResult
  $Res call({String? uid, String? name, String? photo});
}

/// @nodoc
class _$ChatMemberEntityCopyWithImpl<$Res, $Val extends ChatMemberEntity>
    implements $ChatMemberEntityCopyWith<$Res> {
  _$ChatMemberEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatMemberEntityCopyWith<$Res>
    implements $ChatMemberEntityCopyWith<$Res> {
  factory _$$_ChatMemberEntityCopyWith(
          _$_ChatMemberEntity value, $Res Function(_$_ChatMemberEntity) then) =
      __$$_ChatMemberEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? uid, String? name, String? photo});
}

/// @nodoc
class __$$_ChatMemberEntityCopyWithImpl<$Res>
    extends _$ChatMemberEntityCopyWithImpl<$Res, _$_ChatMemberEntity>
    implements _$$_ChatMemberEntityCopyWith<$Res> {
  __$$_ChatMemberEntityCopyWithImpl(
      _$_ChatMemberEntity _value, $Res Function(_$_ChatMemberEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$_ChatMemberEntity(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatMemberEntity implements _ChatMemberEntity {
  _$_ChatMemberEntity({this.uid, this.name, this.photo});

  factory _$_ChatMemberEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ChatMemberEntityFromJson(json);

  @override
  final String? uid;
  @override
  final String? name;
  @override
  final String? photo;

  @override
  String toString() {
    return 'ChatMemberEntity(uid: $uid, name: $name, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatMemberEntity &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatMemberEntityCopyWith<_$_ChatMemberEntity> get copyWith =>
      __$$_ChatMemberEntityCopyWithImpl<_$_ChatMemberEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatMemberEntityToJson(
      this,
    );
  }
}

abstract class _ChatMemberEntity implements ChatMemberEntity {
  factory _ChatMemberEntity(
      {final String? uid,
      final String? name,
      final String? photo}) = _$_ChatMemberEntity;

  factory _ChatMemberEntity.fromJson(Map<String, dynamic> json) =
      _$_ChatMemberEntity.fromJson;

  @override
  String? get uid;
  @override
  String? get name;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$_ChatMemberEntityCopyWith<_$_ChatMemberEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

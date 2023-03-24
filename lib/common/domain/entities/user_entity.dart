import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../constans/firestore__constans.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    String? uid,
    String? name,
    String? photo,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  factory UserEntity.fromUserDto(User? userDto) => UserEntity(
        uid: userDto?.uid,
        name: userDto?.displayName ?? userDto?.email?.split('@')[0],
        photo: userDto?.photoURL,
      );

  factory UserEntity.fromDocument(DocumentSnapshot doc) => UserEntity(
      uid: doc.id,
      name: doc.get(FirestoreConstans.nickName),
      photo: doc.get(FirestoreConstans.photoUrl));
}

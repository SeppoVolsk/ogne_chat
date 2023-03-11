import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_member_entity.freezed.dart';
part 'chat_member_entity.g.dart';

@freezed
class ChatMemberEntity with _$ChatMemberEntity {
  factory ChatMemberEntity({String? uid, String? name, String? photo}) =
      _ChatMemberEntity;

  factory ChatMemberEntity.fromJson(Map<String, dynamic> json) =>
      _$ChatMemberEntityFromJson(json);
}

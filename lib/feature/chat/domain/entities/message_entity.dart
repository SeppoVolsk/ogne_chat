import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kind_owl/common/domain/constans/firestore__constans.dart';

part 'message_entity.freezed.dart';
part 'message_entity.g.dart';

@freezed
class MessageEntity with _$MessageEntity {
  factory MessageEntity({
    String? idFrom,
    String? idTo,
    String? timestamp,
    String? content,
    int? type,
  }) = _MessageEntity;

  factory MessageEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageEntityFromJson(json);

  factory MessageEntity.fromDocument(DocumentSnapshot document) {
    String? idFrom = document.get(FirestoreConstans.idFrom);
    String? idTo = document.get(FirestoreConstans.idTo);
    String? timestamp = document.get(FirestoreConstans.timestamp);
    String? content = document.get(FirestoreConstans.content);
    int? type = document.get(FirestoreConstans.type);
    return MessageEntity(
        idFrom: idFrom,
        idTo: idTo,
        timestamp: timestamp,
        content: content,
        type: type);
  }
}

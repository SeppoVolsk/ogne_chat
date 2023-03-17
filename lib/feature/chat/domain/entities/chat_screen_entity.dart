import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kind_owl/feature/chat/domain/entities/message_entity.dart';
part 'chat_screen_entity.freezed.dart';

@freezed
class ChatScreenEntity with _$ChatScreenEntity {
  factory ChatScreenEntity({
    MessageEntity? message,
    Stream<dynamic>? channel,
  }) = _ChatScreenEntity;
}

import 'package:flutter/material.dart';
import 'package:kind_owl/feature/chat/domain/entities/message_entity.dart';

class MessageBubbleWidget extends StatelessWidget {
  const MessageBubbleWidget({super.key, this.message});
  final MessageEntity? message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        child: Text(message?.content ?? ''),
      ),
    );
  }
}

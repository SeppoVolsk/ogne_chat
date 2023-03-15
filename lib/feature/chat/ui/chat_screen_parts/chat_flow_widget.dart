import 'package:flutter/material.dart';
import 'package:kind_owl/feature/chat/domain/entities/message_entity.dart';
import 'package:kind_owl/feature/chat/ui/chat_screen_parts/message_bubble_widget.dart';

class ChatFlowWidget extends StatefulWidget {
  const ChatFlowWidget({super.key, this.newMessage});
  final MessageEntity? newMessage;

  @override
  State<ChatFlowWidget> createState() => _ChatFlowWidgetState();
}

class _ChatFlowWidgetState extends State<ChatFlowWidget> {
  List<MessageEntity?> messageList = [];
  @override
  Widget build(BuildContext context) {
    messageList.add(widget.newMessage);
    return ListView.builder(
        itemCount: messageList.length,
        itemBuilder: (context, index) => MessageBubbleWidget(
              message: messageList[index],
            ));
  }
}

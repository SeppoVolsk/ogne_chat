import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/constans/firestore__constans.dart';
import 'package:kind_owl/feature/chat/data/firebase_chat_io_service.dart';
import 'package:kind_owl/feature/chat/domain/entities/message_entity.dart';
import 'package:kind_owl/feature/chat/domain/firebase_chat_io_repository.dart';
import 'package:kind_owl/feature/chat/ui/bloc/chat_screen_bloc.dart';
import 'package:kind_owl/feature/chat/ui/chat_screen_parts/message_bubble_widget.dart';
import 'package:kind_owl/feature/main/ui/bloc/main_screen_bloc.dart';
import 'package:l/l.dart';

class ChatFlowWidget extends StatefulWidget {
  const ChatFlowWidget({super.key, required this.newMessage});
  final MessageEntity newMessage;

  @override
  State<ChatFlowWidget> createState() => _ChatFlowWidgetState();
}

class _ChatFlowWidgetState extends State<ChatFlowWidget> {
  List<MessageEntity> messagesList = [];
  @override
  Widget build(BuildContext context) {
    final newMessage = widget.newMessage;
    final content = newMessage.content;

    if (content != null && content.trim().isNotEmpty) {
      messagesList.add(newMessage);
    }

    return BlocBuilder<ChatScreenBLoC, ChatScreenState>(
      builder: (context, state) => StreamBuilder(
          stream: state.data?.channel,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              messagesList = ((snapshot.data.docs as List)
                  .map((e) => MessageEntity.fromDocument(e))).toList();
            }
            return ListView.builder(
                reverse: true,
                itemCount: messagesList.length,
                itemBuilder: (context, index) => MessageBubbleWidget(
                      message: messagesList[index],
                    ));
          }),
    );
  }
}

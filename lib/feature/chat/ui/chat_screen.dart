import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/common/ui/app_components/app_text_field.dart';
import 'package:kind_owl/feature/chat/data/firebase_chat_io_service.dart';
import 'package:kind_owl/feature/chat/domain/entities/message_entity.dart';
import 'package:kind_owl/feature/chat/domain/firebase_chat_io_repository.dart';
import 'package:kind_owl/feature/chat/ui/bloc/chat_screen_bloc.dart';
import 'package:kind_owl/feature/chat/ui/in_chat_builder.dart';
import 'package:kind_owl/feature/main/ui/users_list_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.withUser});
  final UserEntity? withUser;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UserCard(user: widget.withUser),
      ),
      body: Column(
        children: [
          InChatBuilder(withUser: widget.withUser),
          const Spacer(),
          Row(
            children: [
              Expanded(
                  child: AppTextField(
                labelText: "Message",
                controller: messageController,
              )),
              Expanded(
                  flex: 0,
                  child: IconButton(
                    icon: const Icon(Icons.send_rounded),
                    onPressed: () {
                      BlocProvider.of<ChatScreenBLoC>(context).add(
                          ChatScreenEvent.sendMessage(
                              text: messageController.text));
                      messageController.clear();
                    },
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

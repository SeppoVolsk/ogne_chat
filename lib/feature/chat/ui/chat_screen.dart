import 'package:flutter/material.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/feature/chat/ui/chat_screen_parts/chat_flow_widget.dart';
import 'package:kind_owl/feature/chat/ui/chat_screen_parts/chat_screen_app_bar.dart';
import 'package:kind_owl/feature/chat/ui/chat_screen_parts/chat_screen_bottom_bar.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, this.withUser});
  final UserEntity? withUser;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatScreenAppBar(user: widget.withUser),
      body: const Column(
        children: [
          Expanded(
            child: ChatFlowWidget(),
          ),
        ],
      ),
      bottomNavigationBar: ChatScreenBottomBar(),
    );
  }
}

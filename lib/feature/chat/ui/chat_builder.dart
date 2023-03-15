import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/feature/chat/data/firebase_chat_io_service.dart';
import 'package:kind_owl/feature/chat/domain/firebase_chat_io_repository.dart';
import 'package:kind_owl/feature/chat/ui/bloc/chat_screen_bloc.dart';
import 'package:kind_owl/feature/chat/ui/chat_screen.dart';

class ChatBuilder extends StatelessWidget {
  const ChatBuilder({super.key, required this.chatWithUser});
  final UserEntity? chatWithUser;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatScreenBLoC>(
      create: (context) => ChatScreenBLoC(
          repository:
              FirebaseChatIoRepository(FirebaseChatIoService(), chatWithUser)),
      child: BlocConsumer<ChatScreenBLoC, ChatScreenState>(
          builder: (context, state) => ChatScreen(withUser: chatWithUser),
          listener: (context, state) {}),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/common/domain/error/error_entity.dart';
import 'package:kind_owl/common/ui/app_components/app_snack_bar.dart';
import 'package:kind_owl/feature/chat/ui/bloc/chat_screen_bloc.dart';
import 'package:kind_owl/feature/chat/ui/chat_screen.dart';

class ChatBuilder extends StatelessWidget {
  const ChatBuilder({super.key, required this.chatWithUser});
  final UserEntity? chatWithUser;
  @override
  Widget build(BuildContext context) {
    di.initChatScope;

    return BlocProvider<ChatScreenBLoC>(
      create: (context) =>
          di.chatBloc(chatWithUser)..add(const ChatScreenEvent.update()),
      child: BlocConsumer<ChatScreenBLoC, ChatScreenState>(
          builder: (context, state) => ChatScreen(withUser: chatWithUser),
          listener: (context, state) {
            state.whenOrNull(
              error: (_, error) => AppSnackBar.showSnackBarWithError(
                context,
                ErrorEntity.fromException(error),
              ),
            );
          }),
    );
  }
}

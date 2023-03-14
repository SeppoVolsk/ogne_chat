import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/feature/chat/data/firebase_chat_io_service.dart';
import 'package:kind_owl/feature/chat/domain/firebase_chat_io_repository.dart';
import 'package:kind_owl/feature/chat/ui/bloc/chat_screen_bloc.dart';
import 'package:kind_owl/feature/main/ui/bloc/main_screen_bloc.dart';

class InChatBuilder extends StatelessWidget {
  const InChatBuilder({super.key, required this.withUser});
  final UserEntity withUser;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatScreenBLoC>(
      create: (context) => ChatScreenBLoC(
          repository:
              FirebaseChatIoRepository(FirebaseChatIoService(), withUser)),
      child: BlocConsumer<ChatScreenBLoC, ChatScreenState>(
          builder: (context, state) =>
              state.maybeMap(orElse: () => const SizedBox.shrink()),
          listener: (context, state) {}),
    );
  }
}

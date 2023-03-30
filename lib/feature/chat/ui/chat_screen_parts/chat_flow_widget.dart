import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/ui/app_components/app_loading_widget.dart';
import 'package:kind_owl/feature/chat/domain/entities/message_entity.dart';
import 'package:kind_owl/feature/chat/ui/bloc/chat_screen_bloc.dart';
import 'package:kind_owl/feature/chat/ui/chat_screen_parts/message_bubble_widget.dart';

class ChatFlowWidget extends StatefulWidget {
  const ChatFlowWidget({super.key});

  @override
  State<ChatFlowWidget> createState() => _ChatFlowWidgetState();
}

class _ChatFlowWidgetState extends State<ChatFlowWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatScreenBLoC, ChatScreenState>(
        builder: (context, state) => state.data?.chatMessages != null
            ? ListView.builder(
                reverse: true,
                itemCount: state.data?.chatMessages?.length,
                itemBuilder: (context, index) => MessageBubbleWidget(
                    message:
                        state.data?.chatMessages?[index] ?? MessageEntity()))
            : const AppLoadingWidget());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/ui/app_components/app_text_field.dart';
import 'package:kind_owl/feature/chat/ui/bloc/chat_screen_bloc.dart';

class ChatInputWidget extends StatelessWidget {
  const ChatInputWidget({super.key, required this.messageController});
  final TextEditingController messageController;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                    ChatScreenEvent.sendMessage(text: messageController.text));
                messageController.clear();
              },
            ))
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kind_owl/common/ui/app_components/app_text_field.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Row(
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
                  onPressed: () {},
                ))
          ],
        ),
      ),
    );
  }
}

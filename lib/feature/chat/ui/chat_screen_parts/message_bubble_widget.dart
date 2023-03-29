import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/utils/utils.dart';
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart';
import 'package:kind_owl/feature/chat/domain/entities/message_entity.dart';
import 'package:l/l.dart';

class MessageBubbleWidget extends StatefulWidget {
  const MessageBubbleWidget({super.key, required this.message});
  final MessageEntity message;

  @override
  State<MessageBubbleWidget> createState() => _MessageBubbleWidgetState();
}

class _MessageBubbleWidgetState extends State<MessageBubbleWidget> {
  late final currentUserId;

  @override
  void initState() {
    currentUserId = context.read<AuthBLoC>().state.user?.uid;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(20);
    const offset = EdgeInsets.all(10);
    const timeStyle = TextStyle(color: Colors.blueGrey);
    final timestamp = widget.message.timestamp;
    final currGmtDateTime =
        timestamp != null ? Utils.toCurrentGmtDateTime(timestamp) : null;
    final bool ours = widget.message.idFrom == currentUserId;

    return Align(
      alignment: ours ? Alignment.bottomRight : Alignment.bottomLeft,
      child: Container(
        padding: offset,
        margin: offset,
        decoration: BoxDecoration(
            // color: ours ? Colors.green[100] : Colors.amberAccent[100],
            border: Border.all(),
            borderRadius: ours
                ? const BorderRadius.only(
                    topLeft: radius,
                    bottomLeft: radius,
                  )
                : const BorderRadius.only(
                    topRight: radius,
                    bottomRight: radius,
                  )),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text(widget.message.content ?? ''),
          if (currGmtDateTime != null) ...[
            Text(
              '${currGmtDateTime.hour}:${currGmtDateTime.minute}',
              style: timeStyle,
            ),
            Text(
                '${currGmtDateTime.day}.${currGmtDateTime.month}.${currGmtDateTime.year}',
                style: timeStyle),
          ] else
            const SizedBox.shrink(),
        ]),
      ),
    );
  }
}

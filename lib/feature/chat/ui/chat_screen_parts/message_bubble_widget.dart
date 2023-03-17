import 'package:flutter/material.dart';
import 'package:kind_owl/common/domain/utils/utils.dart';
import 'package:kind_owl/feature/chat/domain/entities/message_entity.dart';

class MessageBubbleWidget extends StatelessWidget {
  const MessageBubbleWidget(
      {super.key, required this.message, this.ours = true});
  final MessageEntity message;
  final bool ours;

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(20);
    const offset = EdgeInsets.all(10);
    const timeStyle = TextStyle(color: Colors.blueGrey);
    final timestamp = message.timestamp;
    final currGmtDateTime =
        timestamp != null ? Utils.toCurrentGmtDateTime(timestamp) : null;

    return Align(
      alignment: ours ? Alignment.bottomRight : Alignment.bottomLeft,
      child: Container(
        padding: offset,
        margin: offset,
        decoration: BoxDecoration(
            color: Colors.amberAccent[200],
            borderRadius: const BorderRadius.only(
              topLeft: radius,
              bottomLeft: radius,
            )),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text(message.content ?? ''),
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

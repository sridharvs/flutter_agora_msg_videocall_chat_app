import 'package:flutter/material.dart';

class MessageBubble extends StatefulWidget {
  const MessageBubble(
      {super.key,
      required this.profileImageurl,
      required this.message,
      required this.date});

  final String? profileImageurl;
  final String message;
  final String date;

  @override
  State<MessageBubble> createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  @override
  Widget build(BuildContext context) {
    final isReceiver = widget.profileImageurl != null;
    return Row(
      mainAxisAlignment:
          isReceiver ? MainAxisAlignment.start : MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (isReceiver)
          Padding(
            padding: const EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundColor: Colors.grey[200],
              foregroundImage: NetworkImage(widget.profileImageurl!),
            ),
          ),
        Flexible(
          child: Column(
            crossAxisAlignment:
                isReceiver ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                constraints: const BoxConstraints(maxWidth: 270),
                decoration: BoxDecoration(
                  color: isReceiver ? Colors.amber : Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  widget.message,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                widget.date,
                style: const TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        if (!isReceiver)
          const SizedBox(
            width: 12,
          ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: ListView.separated(
        itemBuilder: (_, index) => const SizedBox.shrink(),
        separatorBuilder: (_, __) => const SizedBox(
          height: 15,
        ),
        itemCount: 0,
        padding: const EdgeInsets.only(bottom: 15),
        reverse: true,
      ),
    );
    ;
  }
}

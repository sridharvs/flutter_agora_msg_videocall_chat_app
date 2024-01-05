import 'package:flutter/material.dart';
import 'package:flutter_agora_msg_videocall_chat_app/chat/views/video_call_screen.dart';
import 'package:flutter_agora_msg_videocall_chat_app/chat/widgets/message_bubble.dart';
import 'package:flutter_agora_msg_videocall_chat_app/chat/widgets/message_text_field.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => VideoCallScreen(),
                    ),
                  ),
              icon: Icon(Icons.video_camera_front))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (_, index) => _messages[index],
              separatorBuilder: (_, __) => const SizedBox(height: 15),
              itemCount: _messages.length,
              padding: const EdgeInsets.only(bottom: 15),
              reverse: true,
            ),
          ),
          const MessageTextField(),
        ],
      ),
    );
  }
}

const _messages = <MessageBubble>[
  MessageBubble(
      profileImageurl:
          'https://unsplash.com/photos/a-brown-dog-laying-on-top-of-a-white-rug-C8mJE5MxkDE',
      message: 'HI Buddy',
      date: 'Jan 03, 05.50 PM'),
  MessageBubble(
      profileImageurl:
          'https://unsplash.com/photos/a-brown-dog-laying-on-top-of-a-white-rug-C8mJE5MxkDE',
      message: 'Hi Bro',
      date: 'Jan 03, 05.55 PM'),
  MessageBubble(
      profileImageurl:
          'https://unsplash.com/photos/a-brown-dog-laying-on-top-of-a-white-rug-C8mJE5MxkDE',
      message: 'Hows going Bro',
      date: 'Jan 03, 05.55 PM'),
  MessageBubble(
      profileImageurl:
          'https://unsplash.com/photos/a-brown-dog-laying-on-top-of-a-white-rug-C8mJE5MxkDE',
      message: 'yup going good',
      date: 'Jan 03, 05.55 PM'),
  MessageBubble(
      profileImageurl:
          'https://unsplash.com/photos/a-brown-dog-laying-on-top-of-a-white-rug-C8mJE5MxkDE',
      message: 'thanks',
      date: 'Jan 03, 05.55 PM'),
  MessageBubble(
      profileImageurl:
          'https://unsplash.com/photos/a-brown-dog-laying-on-top-of-a-white-rug-C8mJE5MxkDE',
      message: 'welcome',
      date: 'Jan 03, 05.55 PM')
];

import 'package:flutter/material.dart';
import 'package:flutter_agora_msg_videocall_chat_app/chat/views/chat_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Videocall by Agora',
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      builder: (context, child) => _unfocusAction(child: child!),
      home: const ChatScreen(),
    );
  }
}

class _unfocusAction extends StatelessWidget {
  const _unfocusAction({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}

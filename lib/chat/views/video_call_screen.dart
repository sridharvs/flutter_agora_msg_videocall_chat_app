import 'package:flutter/material.dart';
import 'package:agora_uikit/agora_uikit.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({super.key});

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  final AgoraClient _client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: 'eef93f4abb7f49c3b3391de5a4c17dd6',
      channelName: '',
      tempToken:
          '007eJxTYHi5s0D58Nkrl7jCcxJeXth6MjtaTK9968erGcZiM0XuKIUpMKSmplkap5kkJiWZp5lYJhsnGRtbGqakmiaaJBuap6SYcd+eltoQyMgQ+5eNhZEBAkF8YQa3nNKSktQix/T8osSwlHznxJwcBgYAAP8mzA==',
    ),
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future<void> _initagora() async {
    await _client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('video Call'),
        ),
        body: Stack(
          children: [
            SafeArea(
              child: AgoraVideoViewer(
                client: _client,
                layoutType: Layout.floating,
                showNumberOfUsers: true,
              ),
            ),
            AgoraVideoButtons(
              client: _client,
              enabledButtons: [
                BuiltInButtons.toggleCamera,
                BuiltInButtons.callEnd,
                BuiltInButtons.toggleMic,
              ],
            )
          ],
        ),
      ),
    );
  }
}

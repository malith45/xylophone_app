import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              keyBoard(1),
              keyBoard(2),
              keyBoard(3),
              keyBoard(4),
              keyBoard(5),
              keyBoard(6),
              keyBoard(7),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> audioPlay(int track) async {
    final player = AudioPlayer();
    await player.play(AssetSource('audio/note$track.wav'));
  }

  Expanded keyBoard(int key) {
    return Expanded(
      child: TextButton(
          onPressed: () async {
            audioPlay(key);
          },
          child: Container(
            color: const Color(0xffE53935),
          )),
    );
  }
}

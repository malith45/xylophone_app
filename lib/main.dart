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
              keyBoard(key: 1, color: Colors.red),
              keyBoard(key: 2, color: Colors.orange),
              keyBoard(key: 3, color: Colors.yellow),
              keyBoard(key: 4, color: Colors.green),
              keyBoard(key: 5, color: Colors.cyan),
              keyBoard(key: 6, color: Colors.blue),
              keyBoard(key: 7, color: Colors.purple),
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

  Expanded keyBoard({required int key, required Color color}) {
    return Expanded(
        child: TextButton(
      onPressed: () async {
        audioPlay(key);
      },
      child: Container(
        color: color,
      ),
    ));
  }
}

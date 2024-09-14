import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: TextButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.setSource(AssetSource('assets/note1.wav'));
            },
            child: const Text('Click'),
          ),
        )),
      ),
    );
  }
}

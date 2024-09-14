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
              Expanded(
                child: TextButton(
                    onPressed: () async {
                      audioPlay(2);
                    },
                    child: Container(
                      color: const Color(0xffD81B60),
                    )),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () async {
                      audioPlay(3);
                    },
                    child: Container(
                      color: const Color(0xff8E24AA),
                    )),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    audioPlay(4);
                  },
                  child: Container(
                    color: const Color(0xff5E35B1),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () async {
                      audioPlay(5);
                    },
                    child: Container(
                      color: const Color(0xff3949AB),
                    )),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    audioPlay(6);
                  },
                  child: Container(
                    color: const Color(0xff1E88E5),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    audioPlay(7);
                  },
                  child: Container(
                    color: const Color(0xff43A047),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> audioPlay(int track) async {
    final player = AudioPlayer();
    await player.play(AssetSource('audio/note$track.wav'));

    void keyBoard() {
      Expanded(
        child: TextButton(
            onPressed: () async {
              audioPlay(1);
            },
            child: Container(
              color: const Color(0xffE53935),
            )),
      );
    }
  }
}

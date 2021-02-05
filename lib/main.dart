import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final audioPlayer = AudioCache();
  playLocal(int num) {
    audioPlayer.play('note$num.wav');
  }

  Expanded getBox(Color color, int num) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playLocal(num);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                getBox(Colors.red, 1),
                getBox(Colors.orange, 2),
                getBox(Colors.yellow, 3),
                getBox(Colors.green, 4),
                getBox(Colors.greenAccent, 5),
                getBox(Colors.blue, 6),
                getBox(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

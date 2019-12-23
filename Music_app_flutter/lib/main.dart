import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int playSoundNumber) {
    final player = AudioCache();
    player.play('note$playSoundNumber.wav');
  }

  Expanded buildKey({Color color, int playSoundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(playSoundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.amberAccent, playSoundNumber: 1),
              buildKey(color: Colors.green, playSoundNumber: 2),
              buildKey(color: Colors.deepOrange, playSoundNumber: 3),
              buildKey(color: Colors.teal, playSoundNumber: 4),
              buildKey(color: Colors.blue, playSoundNumber: 5),
              buildKey(color: Colors.deepPurple, playSoundNumber: 6),
              buildKey(color: Colors.pink, playSoundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

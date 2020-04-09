import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void plays(int sou) {
    final player = AudioCache();
    player.play('note$sou.wav');
  }

  Expanded buildkey({Color color, int sou}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          plays(sou);
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
              buildkey(color: Colors.red, sou: 1),
              buildkey(color: Colors.yellow, sou: 2),
              buildkey(color: Colors.orange, sou: 3),
              buildkey(color: Colors.blue, sou: 4),
              buildkey(color: Colors.green, sou: 5),
              buildkey(color: Colors.teal, sou: 6),
              buildkey(color: Colors.purple, sou: 7),
            ],
          ),
        ),
      ),
    );
  }
}

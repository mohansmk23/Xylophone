import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(Colors.red, 1),
              buildkey(Colors.orange, 2),
              buildkey(Colors.yellow, 3),
              buildkey(Colors.green, 4),
              buildkey(Colors.blue, 5),
              buildkey(Colors.indigo, 6),
              buildkey(Colors.deepPurple, 7),
            ],
          ),
        ),
      ),
    );
  }

  void playsound(int soundnumber) {
    final player = AudioCache();

    player.play('note$soundnumber.wav');
  }

  Widget buildkey(Color color, int sound) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(sound);
        },
      ),
    );
  }
}

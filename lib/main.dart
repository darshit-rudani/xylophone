import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildcode({Color color, int soundnumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundnumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildcode(color: Colors.red, soundnumber: 1),
              buildcode(color: Colors.orange, soundnumber: 2),
              buildcode(color: Colors.yellow, soundnumber: 3),
              buildcode(color: Colors.green, soundnumber: 4),
              buildcode(color: Colors.teal, soundnumber: 5),
              buildcode(color: Colors.blue, soundnumber: 6),
              buildcode(color: Colors.purple, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

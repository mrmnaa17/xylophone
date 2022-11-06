import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());
class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
     player.setSource(AssetSource('note$soundNumber.wav'));
     player.resume();
  }


  Expanded buildKey({Color? color, int? soundNumber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {
          playSound(soundNumber!);
        }, child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

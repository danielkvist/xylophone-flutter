import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

// Dart functions
//  -> void getMilk() { /*functionality*/ };
// 
// We can specify an "input" (argument):
//  -> void getMilk(int n) { print('number: $n'); }
//  -> getMilk(2);
// You have to specify the data type of the argument and the name.
// We can name our parameters:
//  -> void greet({ String greeting, String personToGreet }) {...}
//  -> greet(greeting: 'How are u', personToGreet: 'Jackie');

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  playSound(1);
                },
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playSound(2);
                },
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playSound(3);
                },
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playSound(4);
                },
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  playSound(5);
                },
              ),
              FlatButton(
                color: Colors.teal,
                onPressed: () {
                  playSound(6);
                },
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: () {
                  playSound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

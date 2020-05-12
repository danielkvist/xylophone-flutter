import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

// Dart functions
//  -> void getMilk() {...};
// We can specify an "input" (argument):
//  -> void getMilk(int n) { print('number: $n'); }
//  -> getMilk(2);
// You have to specify the data type of the argument and the name.
// We can name our parameters:
//  -> void greet({ String greeting, String personToGreet }) {...}
//  -> greet(greeting: 'How are u', personToGreet: 'Jackie');
// If our function returns something, we need to specify its type
//  -> int calcSomething() { return 42; }
// The type void mark the function as one without output.
//  -> void main() {...}

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
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

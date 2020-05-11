import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

// What are Flutter & Dart packages?
//
// Flutter packages are Open Source libraries of code
// that other people had created that you can use
// in your project.
// To add the depedency to your project you can
//    * simply add the name (english_words).
//    * add it with the version number (english_words: ^3.1.5).

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              onPressed: () {
                // This is all we need to play local audio
                final player = AudioCache();

                // Audioplayers assumes that your files
                // are in assets/
                player.play('note2.wav');
              },
              child: Text('Click me'),
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource(
        'assets_note$soundNumber.wav',
      ),
    );
  }

  Expanded builKey({Color? color, int? soundNumber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color!),
        ),
        onPressed: () {
          playSound(soundNumber!);
        },
        child: const Text(''),
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
              builKey(color: Colors.red, soundNumber: 1),
              builKey(color: Colors.orange, soundNumber: 2),
              builKey(color: Colors.yellow, soundNumber: 3),
              builKey(color: Colors.green, soundNumber: 4),
              builKey(color: Colors.teal, soundNumber: 5),
              builKey(color: Colors.blue, soundNumber: 6),
              builKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

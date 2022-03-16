import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: DecoratedBox(
            position: DecorationPosition.background,
            decoration: BoxDecoration(
              color: Colors.yellow,
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('images/drum.png'),
              ),
            ),
            child: Buttons(),
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  Widget build(ctx) {
    return Column(
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: IconButton(
                  color: Colors.redAccent,
                  onPressed: () {
                    var player = AudioCache();
                    player.play('c1.wav');
                  },
                  icon: Icon(Icons.home),
                ),
              ),
              Expanded(
                child: IconButton(
                  color: Colors.redAccent,
                  onPressed: () {
                    var player = AudioCache();
                    player.play('c2.wav');
                  },
                  icon: Icon(Icons.audiotrack),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    var player = AudioCache();
                    player.play('h1.wav');
                  },
                  icon: Icon(Icons.audiotrack),
                ),
              ),
              Expanded(
                child: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    var player = AudioCache();
                    player.play('h2.wav');
                  },
                  icon: Icon(Icons.audiotrack),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: IconButton(
                  color: Colors.redAccent,
                  onPressed: () {
                    var player = AudioCache();
                    player.play('k1.wav');
                  },
                  icon: Icon(Icons.audiotrack),
                ),
              ),
              Expanded(
                child: IconButton(
                  color: Colors.redAccent,
                  onPressed: () {
                    var player = AudioCache();
                    player.play('k2.wav');
                  },
                  icon: Icon(Icons.audiotrack),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

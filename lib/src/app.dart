import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

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

late AudioPlayer player;

class Buttons extends StatelessWidget {
  @override
  Widget build(ctx) {
    player = AudioPlayer();
    return Column(
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: IconButton(
                  color: Colors.redAccent,
                  onPressed: () async {
                    await player.setAsset('assets/c1.wav');
                    player.play();
                  },
                  icon: Icon(Icons.home),
                ),
              ),
              Expanded(
                child: IconButton(
                  color: Colors.redAccent,
                  onPressed: null,
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
                  onPressed: null,
                  icon: Icon(Icons.audiotrack),
                ),
              ),
              Expanded(
                child: IconButton(
                  color: Colors.white,
                  onPressed: null,
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
                  onPressed: null,
                  icon: Icon(Icons.audiotrack),
                ),
              ),
              Expanded(
                child: IconButton(
                  color: Colors.redAccent,
                  onPressed: null,
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

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import './audioPlayer.dart';

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
              child: getAppColumn()),
        ),
      ),
    );
  }
}

Widget getAppColumn() {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: IconButton(
                color: Colors.redAccent,
                onPressed: null,
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

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
              child: TextButton(
                onPressed: () => print(''),
                child: Text('hello'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () => print(''),
                child: Text('hello'),
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
              child: TextButton(
                onPressed: () => print(''),
                child: Text('hello'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () => print(''),
                child: Text('hello'),
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
              child: TextButton(
                onPressed: () => print(''),
                child: Text('hello'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () => print(''),
                child: Text('hello'),
              ),
            ),
          ],
        ),
      )
    ],
  );
}

import 'package:audioplayers/audioplayers.dart';

void playAudio(String name) {
  final player = AudioCache();
  player.play(name);
}

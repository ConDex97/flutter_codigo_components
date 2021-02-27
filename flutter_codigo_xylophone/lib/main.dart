import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  AudioCache audioCache = AudioCache();
  void playSound(int number){
    audioCache.play('audios/note$number.wav');
  }
  Widget buildKey({Color color, int number}){
    return Expanded(
      child: FlatButton(
        child: Text("Key $number"),
        color: color,
        onPressed: (){
          playSound(number);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Color(0xff3F2DA5), number: 1 ),
            buildKey(color: Color(0xff5038BC), number: 2 ),
            buildKey(color: Colors.greenAccent, number: 3 ),
            buildKey(color: Color(0xff3F2DA5), number: 4 ),
            buildKey(color: Colors.blue, number: 5 ),
            buildKey(color: Colors.greenAccent, number: 6 ),
            buildKey(color: Color(0xff3F2DA5), number: 7 ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());
void playSound(int soundNumber){
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}
Expanded buildKey({Color color, int soundNumber}){
  return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber);
        },
      ),);
}
class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text('Musical App')),
          
          actions: <Widget>[
            Icon(Icons.favorite, color: Colors.red,),
            Icon(Icons.insert_emoticon, color: Colors.amber,)
          ],

        ),
        body: SafeArea(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(color: Colors.lightBlue, soundNumber: 1),
                  buildKey(color: Colors.red, soundNumber: 2),
                  buildKey(color: Colors.amber, soundNumber: 3),
                  buildKey(color: Colors.deepOrangeAccent, soundNumber: 4),
                  buildKey(color: Colors.green, soundNumber: 5),
                  buildKey(color: Colors.lightGreen, soundNumber: 6),
                  buildKey(color: Colors.blue, soundNumber: 7),
                ],
              ),

            )),
      ),
    );
  }
}


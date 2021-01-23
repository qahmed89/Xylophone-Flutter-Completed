import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void makeSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }
  Expanded buildKey ({ Color color , int num }){
    return  Expanded(
      child: Container(
        color: color,
        child: FlatButton(

            onPressed: () {
              makeSound(num);
            }),
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
                color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    buildKey(color: Colors.blue , num: 1),
                    buildKey(color: Colors.blue[900] , num: 2),
                    buildKey(color: Colors.red , num :3),
                    buildKey(color: Colors.redAccent, num: 4),
                    buildKey(color: Colors.yellow , num : 5),
                    buildKey(color: Colors.yellowAccent , num : 6),
                    buildKey(color: Colors.green , num: 7),

                  ],
                )),
          ),
        ),
      ),
    );
  }
}

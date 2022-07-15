import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//import 'package:audioplaye';

void main() {
  runApp(const MyDurumApp());
}

final player = AudioPlayer(playerId: 'MyUniquePlayer');


class MyDurumApp extends StatelessWidget {
  const MyDurumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: MyContainer(),
        ),
      ),
    );
  }
}

class MyContainer extends StatefulWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextButton(
            onPressed: () {
              setState((){
                player.setSource(AssetSource('bongo.wav'));
                player.resume();
              });
            },
            child: Text('Press')));
  }
}

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
    return Row(
      children: [
        Expanded(
            child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.blue,
            )),
            Expanded(
                child: Container(
              color: Colors.green,
            )),
            Expanded(
                child: Container(
              color: Colors.lime,
            )),
          ],
        )),
        Expanded(
            child: Column(
          children: [
            Expanded(
                child: ElevatedButton(
                    style: ButtonStyle(),
                    onPressed: () {
                      setState(() {
                        player.setSource(AssetSource('clap2.wav'));
                        player.resume();
                      });
                    },
                    child: Container(
                      color: Colors.red,
                    ))),
            Expanded(
                child: Container(
              color: Colors.deepPurple,
            )),
            Expanded(
                child: Container(
              color: Colors.white38,
            )),
          ],
        )),
      ],
    );
  }
}

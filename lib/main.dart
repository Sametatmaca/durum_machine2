import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

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
              child: buildElevatedButton(Colors.blue, 'how'),
            ),
            Expanded(
              child: buildElevatedButton(Colors.green, 'bongo'),
            ),
            Expanded(
              child: buildElevatedButton(Colors.lime, 'woo'),
            ),
          ],
        )),
        Expanded(
            child: Column(
          children: [
            Expanded(
              child: buildElevatedButton(Colors.red, 'clap1'),
            ),
            Expanded(
              child: buildElevatedButton(Colors.purple, 'clap2'),
            ),
            Expanded(
              child: buildElevatedButton(Colors.grey, 'clap3'),
            ),
          ],
        )),
      ],
    );
  }

  ElevatedButton buildElevatedButton(MaterialColor buildcolor, String voice) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(0.0)),
      ),
      onPressed: () {
        setState(() {
          playerSetAndResume(voice);
        });
      },
      child: Container(
        color: buildcolor,
      ),
    );
  }

  void playerSetAndResume(String voice) {
    player.setSource(AssetSource('$voice.wav'));
    player.resume();
  }
}

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
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(0.0)),
                  ),
                  onPressed: () {
                    setState(() {
                      player.setSource(AssetSource('bip.wav'));
                      player.resume();
                    });
                  },
                  child: Container(
                    color: Colors.blue,
                  ),
                ),),
            Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(0.0)),
                  ),
                  onPressed: () {
                    setState(() {
                      player.setSource(AssetSource('bongo.wav'));
                      player.resume();
                    });
                  },
                  child: Container(
                    color: Colors.green,
                  ),
                ),),
            Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(0.0)),
                  ),
                  onPressed: () {
                    setState(() {
                      player.setSource(AssetSource('woo.wav'));
                      player.resume();
                    });
                  },
                  child: Container(
                    color: Colors.lime,
                  ),
                ),),
          ],
        )),
        Expanded(
            child: Column(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.all(0.0)),
                ),
                onPressed: () {
                  setState(() {
                    player.setSource(AssetSource('clap2.wav'));
                    player.resume();
                  });
                },
                child: Container(
                  color: Colors.red,
                ),
              ),
            ),
            Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(0.0)),
                  ),
                  onPressed: () {
                    setState(() {
                      player.setSource(AssetSource('clap1.wav'));
                      player.resume();
                    });
                  },
                  child: Container(
                    color: Colors.purple,
                  ),
                ),),
            Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(0.0)),
                  ),
                  onPressed: () {
                    setState(() {
                      player.setSource(AssetSource('clap3.wav'));
                      player.resume();
                    });
                  },
                  child: Container(
                    color: Colors.white,
                  ),
                ),
            ),
          ],
        )),
      ],
    );
  }
}

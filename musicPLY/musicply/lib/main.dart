import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer audioPlayer;
  String durasi = "00:00";

  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((Duration) {
      setState(() {
        durasi = Duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound(String url) async {
    await audioPlayer.pause();
  }

  void stopSound(String url) async {
    await audioPlayer.stop();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("music player"),
            backgroundColor: Color.fromARGB(255, 102, 14, 14),
          ),
          body: Container(
            color: Color.fromARGB(255, 215, 218, 220),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    color: Color.fromARGB(255, 153, 28, 28),
                    child: Text("Play"),
                    textColor: Colors.white,
                    onPressed: () {
                      playSound(
                          "https://ia601404.us.archive.org/1/items/mood-lofi/mood%20lofi.mp3");
                    },
                  ),
                  MaterialButton(
                    color: Color.fromARGB(255, 153, 28, 28),
                    child: Text("Pause"),
                    textColor: Colors.white,
                    onPressed: () {
                      pauseSound(null);
                    },
                  ),
                  MaterialButton(
                    color: Color.fromARGB(255, 153, 28, 28),
                    textColor: Colors.white,
                    child: Text("Stop"),
                    onPressed: () {
                      stopSound(null);
                    },
                  ),
                  Text(
                    durasi,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

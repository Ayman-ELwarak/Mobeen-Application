import 'dart:io';
import 'package:just_audio/just_audio.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/Menu.dart';

class Gettext extends StatefulWidget {
  String? recordingPath;
  Gettext({super.key, required this.recordingPath});

  @override
  State<Gettext> createState() => _GettextState();
}

class _GettextState extends State<Gettext> {
  final player = AudioPlayer();

  String formatDuratio(Duration d) {
    final minutes = d.inMinutes.remainder(60);
    final seconds = d.inSeconds.remainder(60);

    return "${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";
  }

  void handlerPlayerPause() {
    if (player.playing) {
      player.pause();
    } else {
      player.play();
    }
  }

  void hanleSeek(double value) {
    player.seek(Duration(seconds: value.toInt()));
  }

  Duration position = Duration.zero;
  Duration duration = Duration.zero;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player.setAsset('assest/sounds/001.mp3');
    player.positionStream.listen((p) {
      setState(() {
        position = p;
      });
    });
    player.durationStream.listen((d) {
      setState(() {
        duration = d!;
      });
    });
    player.playerStateStream.listen((state) {
      if (state.processingState == ProcessingState.completed) {
        setState(() {
          position = Duration.zero;
        });
        player.pause();
        player.seek(position);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8CBBB6),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8CBBB6),
        leading: Container(
          margin: const EdgeInsets.only(left: 16.0),
          decoration: const BoxDecoration(
            color: Color(0xFF1E3A3D),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              player.stop();
              Navigator.of(context).pop();
            },
          ),
        ),
        actions: const [Menu()],
      ),
      body: Center(
        child: SizedBox(
          height: 3 * MediaQuery.of(context).size.height / 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Translation',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0x90C4C4C4),
                    ),
                    height: 3 * MediaQuery.of(context).size.height / 10,
                    width: double.infinity,
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Text('Everthing is fine'),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E3A3D),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 8, bottom: 10),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height / 22,
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xFF3D878B),
                                  shape: BoxShape.circle),
                              child: IconButton(
                                onPressed: handlerPlayerPause,
                                icon: Icon(
                                  player.playing
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                  color: Colors.white,
                                  size: MediaQuery.of(context).size.height / 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Slider(
                          thumbColor: const Color(0xFF3D878B),
                          activeColor: const Color(0xFF3D878B),
                          min: 0.0,
                          max: duration.inSeconds.toDouble(),
                          value: position.inSeconds.toDouble(),
                          onChanged: hanleSeek,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Text(
                          formatDuratio(duration),
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

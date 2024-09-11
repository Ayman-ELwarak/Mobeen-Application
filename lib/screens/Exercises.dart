import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobile_app/models/video_model.dart';
import 'package:video_player/video_player.dart';

import '../components/BackBotton.dart';

class ExercisePage extends StatefulWidget {
  final List<Video> exerciseVideos;
  final int index;

  const ExercisePage(
      {super.key, required this.exerciseVideos, required this.index});

  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  late VideoPlayerController _controller;
  double _volume = 0.5;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        widget.exerciseVideos[widget.index].assetPath)
      ..initialize().then((_) {
        setState(() {});
      });
    _controller.setVolume(_volume);
  }

  @override
  Widget build(BuildContext context) {
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Color(0xFF5A7493),
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: screenheight,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xFF5A7493),
          ),
          child: Column(
            children: [
              SizedBox(
                height: kToolbarHeight,
                child: Row(
                  children: [
                    BackButtonContainer().create(context),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Text(
                    widget.exerciseVideos[widget.index].title,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Center(
                  child: _controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                      : CircularProgressIndicator(), // Show a loader until the video is ready
                ),
              ),
              VideoProgressIndicator(_controller,
                  allowScrubbing: true), // Timeline
              Expanded(
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        _controller.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _controller.value.isPlaying
                              ? _controller.pause()
                              : _controller.play();
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        color: Colors.white,
                        _volume > 0 ? Icons.volume_up : Icons.volume_off,
                      ),
                      onPressed: () {
                        setState(() {
                          if (_volume > 0) {
                            _volume = 0;
                          } else {
                            _volume = 0.5; // Default volume after unmute
                          }
                          _controller.setVolume(_volume);
                        });
                      },
                    ),
                    Expanded(
                      child: Slider(
                        thumbColor: Colors.white,
                        activeColor: Colors.white,
                        value: _volume,
                        min: 0,
                        max: 1,
                        onChanged: (value) {
                          setState(() {
                            _volume = value;
                            _controller.setVolume(_volume);
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        "${_controller.value.position.inMinutes}:${(_controller.value.position.inSeconds % 60).toString().padLeft(2, '0')} / ${_controller.value.duration.inMinutes}:${(_controller.value.duration.inSeconds % 60).toString().padLeft(2, '0')}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      /* floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF8CBBB6),
        onPressed: () {
          setState(() {
            _controller.value.isPlaying ? _controller.pause() : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),*/
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

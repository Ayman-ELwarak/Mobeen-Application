import 'package:flutter/material.dart';
import 'package:mobile_app/models/video_model.dart';
import 'package:video_player/video_player.dart';

import '../components/BackBotton.dart';

class ExercisePage extends StatefulWidget {
  final List<Video> exerciseVideos;
  final int index;

  const ExercisePage({super.key, required this.exerciseVideos, required this.index});

  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  late VideoPlayerController _controller;
  double _volume = 0.5;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.exerciseVideos[widget.index].assetPath)
      ..initialize().then((_) {
        setState(() {});
      });
    _controller.setVolume(_volume);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.exerciseVideos[widget.index].title),
        backgroundColor: const Color(0xFF8CBBB6),
        leading: BackButtonContainer().create(context),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: _controller.value.isInitialized
                  ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
                  : CircularProgressIndicator(), // Show a loader until the video is ready
            ),
          ),
          VideoProgressIndicator(_controller, allowScrubbing: true), // Timeline
          Row(
            children: [
              IconButton(
                icon: Icon(
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                ),
                onPressed: () {
                  setState(() {
                    _controller.value.isPlaying ? _controller.pause() : _controller.play();
                  });
                },
              ),
              IconButton(
                icon: Icon(
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
              Text(
                "${_controller.value.position.inMinutes}:${(_controller.value.position.inSeconds % 60).toString().padLeft(2, '0')} / ${_controller.value.duration.inMinutes}:${(_controller.value.duration.inSeconds % 60).toString().padLeft(2, '0')}",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
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
      backgroundColor: Colors.black,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

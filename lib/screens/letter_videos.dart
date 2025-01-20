import 'package:flutter/material.dart';
import 'package:mobile_app/models/video_model.dart';
import 'package:video_player/video_player.dart';

class Letters_vid_Page extends StatefulWidget {
  final List<Video> Videos;
  final int index;

  const Letters_vid_Page(
      {super.key, required this.Videos, required this.index});

  @override
  _Letters_vid_PageState createState() => _Letters_vid_PageState();
}

class _Letters_vid_PageState extends State<Letters_vid_Page> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        widget.Videos[widget.index].assetPath)
      ..initialize().then((_) {
        setState(() {
          _controller.setLooping(true); 
          _controller.play(); 
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : CircularProgressIndicator(),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

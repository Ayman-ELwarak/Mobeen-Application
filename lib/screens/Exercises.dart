import 'dart:async';
import 'package:flutter/material.dart';



class ExercisePage extends StatefulWidget {
  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  Timer? _timer;
  int _start = 20; // Timer starting value (20 seconds)
  bool _isPlaying = false;

  void _startTimer() {
    _isPlaying = true;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start > 0) {
        setState(() {
          _start--;
        });
      } else {
        _stopTimer();
      }
    });
  }

  void _stopTimer() {
    _isPlaying = false;
    if (_timer != null) {
      _timer!.cancel();
    }
  }

  @override
  void dispose() {
    _stopTimer(); // Ensure the timer is stopped when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Lip Opening',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: 20),
            Text(
              _formatTime(_start),
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Repeat for 20 seconds',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 70,
                  icon: Icon(Icons.play_circle_fill, color: Color(0xFF1E3A3D)),
                  onPressed: _isPlaying ? null : _startTimer,
                ),
                SizedBox(width: 20),
                IconButton(
                  iconSize: 70,
                  icon: Icon(Icons.pause_circle_filled, color: Color(0xFF1E3A3D)),
                  onPressed: _isPlaying ? _stopTimer : null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatTime(int seconds) {
    final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final secs = (seconds % 60).toString().padLeft(2, '0');
    return "$minutes:$secs";
  }
}

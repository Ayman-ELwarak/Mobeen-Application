import 'dart:async';
import 'dart:io';
import 'package:mobile_app/screens/Form.dart';
import 'package:path/path.dart' as p;
import 'package:flutter/material.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/Menu.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

class Diagnosis extends StatefulWidget {
  const Diagnosis({super.key});

  @override
  State<Diagnosis> createState() => _DiagnosisState();
}

class _DiagnosisState extends State<Diagnosis> {
  Timer? _timer;
  int _start = 0;

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _start++;
      });
    });
  }

  void _stopTimer() {
    _timer?.cancel();
  }

  void _reset() {
    _timer?.cancel();
    setState(() {
      isRecoring = false;
      recordingPath = null;
      _start = 0;
    });
  }

  Widget fn() {
    if (isRecoring) {
      return Image.asset('assest/images/Wave.gif');
    } else {
      return SizedBox();
    }
  }

  @override
  String? recordingPath;
  bool isRecoring = false;
  final AudioRecorder audioRecorder = AudioRecorder();
  Widget build(BuildContext context) {
    int minutes = _start ~/ 60;
    int seconds = _start % 60;

    return Scaffold(
      backgroundColor: const Color(0xFF8CBBB6),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8CBBB6),
        leading: BackButtonContainer().create(context),
        actions: const [Menu()],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Text(
                  '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
                  style: const TextStyle(fontSize: 48),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: fn(),
              ),
            ),
            const Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(top: 70.0),
                child: Text(
                  'Speak Slowly',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF346266),
                          Color(0xFF753A88),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        _reset();
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0x20094251),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0x50094251),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF094251),
                                Color(0xFF3A8393),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: IconButton(
                              onPressed: () async {
                                if (isRecoring) {
                                  String? filePath = await audioRecorder.stop();
                                  if (filePath != null) {
                                    setState(() {
                                      isRecoring = false;
                                      recordingPath = filePath;
                                      _stopTimer();
                                    });
                                  }
                                } else {
                                  if (await audioRecorder.hasPermission()) {
                                    final Directory appDocumentsDir =
                                        await getApplicationDocumentsDirectory();
                                    final String filePath = p.join(
                                        appDocumentsDir.path, "recording.wav");
                                    try {
                                      audioRecorder.start(
                                        const RecordConfig(),
                                        path: filePath,
                                      );
                                      setState(() {
                                        isRecoring = true;
                                        recordingPath = null;
                                        _start = 0;
                                        _startTimer();
                                      });
                                    } catch (e) {
                                      print("error!!!!!!!!!!");
                                    }
                                  }
                                }
                              },
                              icon: Icon(
                                isRecoring ? Icons.stop : Icons.mic,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0x83346266),
                          Color(0x83753A88),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return const FormPage();
                            }),
                          );
                        },
                        icon: const Icon(
                          Icons.call_to_action_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:mobile_app/components/TextaA.dart';
import 'package:mobile_app/models/ReportModel.dart';
import 'package:mobile_app/screens/Report.dart';

// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as p;
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

class Diagnosis extends StatefulWidget {
  const Diagnosis({super.key});

  @override
  State<Diagnosis> createState() => _DiagnosisState();
}

class _DiagnosisState extends State<Diagnosis> {
  List<Reportmodel> Reports = [
    Reportmodel(
      s1: 'بعد الاستماع إلى كلام الطفل، يبدو أن حالته ممتازة ولا توجد أي مشاكل في إنتاج الكلام.',
      s2: 'لا يُوصى بأي تدخل علاجي حاليًا. الاستمرار في المتابعة للتأكد من الحفاظ على تطور النطق.',
      Backgrond: 'assest/images/FalseBackground.jpg',
      image: 'assest/images/False.jpg',
    ),
    Reportmodel(
      s1: 'بعد الاستماع إلى كلام الطفل، يبدو أن هناك مشكلة ملحوظة في إنتاج الكلام لديه.',
      s2: ' يوصى بإجراء تقييم شامل للكلام لتحديد مجالات الصعوبة المحددة وتطوير خطة علاج فردية لمعالجة هذه المخاوف.',
      Backgrond: 'assest/images/TrueBackground.jpg',
      image: 'assest/images/True.jpg',
    ),
  ];
  Timer? _timer;
  int _start = 0;
  var url = 'https://dd-api-ef261231066c.herokuapp.com/detect';

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

  Future<void> _uploadFile() async {
    if (recordingPath == null) return;
    try {
      final Dio _dio = Dio();
      final response = await _dio.post(
        'https://dd-api-ef261231066c.herokuapp.com/detect',
        data: FormData.fromMap({
          'file': await MultipartFile.fromFile(recordingPath!),
        }),
        options: Options(
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        ),
      );
      Map<String, dynamic> Json = response.data;
      bool prediction = Json['prediction'];
      print(prediction);
      if (prediction == false) {
        setState(() {
          index = 0;
          UploadComplete = 2;
        });
      } else {
        setState(() {
          index = 1;
          UploadComplete = 2;
        });
      }
      print('Upload response: ${response.data}');
    } catch (e) {
      print('Error uploading file: $e');
    }
  }

  Widget fn() {
    if (isRecoring) {
      return Image.asset('assest/images/Wave.gif');
    } else {
      return SizedBox();
    }
  }

  Widget Action() {
    if (UploadComplete == 0) {
      return const SizedBox(
        width: 50,
        height: 50,
      );
    } else if (UploadComplete == 1) {
      return Container(
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
        child: const Padding(
          padding: EdgeInsets.all(3.0),
          child: SizedBox(
            width: 50,
            height: 50,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              strokeWidth: 6,
            ),
          ),
        ),
      );
    } else {
      return Container(
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
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return Report(Reports: Reports, index: index);
              }),
            );
          },
          icon: const Icon(
            Icons.call_to_action_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
      );
    }
  }

  String? recordingPath;
  bool isRecoring = false;
  File? file;
  final AudioRecorder audioRecorder = AudioRecorder();
  int index = -1;
  int UploadComplete = 0;

  @override
  Widget build(BuildContext context) {
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    int minutes = _start ~/ 60;
    int seconds = _start % 60;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: screenheight,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assest/images/Translatorbackground.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: kToolbarHeight / 2,
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Textaa(
                      child: Text(
                        '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
                        style: const TextStyle(fontSize: 30),
                      ),
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
                      'تحدث بهدوء',
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
                            UploadComplete = 0;
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
                                      String? filePath =
                                          await audioRecorder.stop();
                                      if (filePath != null) {
                                        setState(() {
                                          isRecoring = false;
                                          recordingPath = filePath;
                                          file = File(filePath);
                                          UploadComplete = 1;
                                          _uploadFile();
                                          _stopTimer();
                                        });
                                      }
                                    } else {
                                      if (await audioRecorder.hasPermission()) {
                                        final Directory appDocumentsDir =
                                            await getApplicationDocumentsDirectory();
                                        final String filePath = p.join(
                                            appDocumentsDir.path,
                                            "recording.wav");
                                        try {
                                          audioRecorder.start(
                                            const RecordConfig(
                                              encoder: AudioEncoder.wav,
                                            ),
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
                      child: Action(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

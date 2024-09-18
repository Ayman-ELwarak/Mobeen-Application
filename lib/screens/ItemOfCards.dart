// ignore_for_file: file_names
import 'dart:io';
// ignore: depend_on_referenced_packages
import 'package:just_audio/just_audio.dart';
import 'package:mobile_app/components/TextaA.dart';
import 'package:path/path.dart' as p;
import 'package:flutter/material.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/models/CardsTypeModel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

// ignore: must_be_immutable
class Itemofcards extends StatefulWidget {
  List<Cardstypemodel> cards;
  int index;
  Itemofcards({super.key, required this.cards, required this.index});

  @override
  State<Itemofcards> createState() => _Itemofcards();
}

class _Itemofcards extends State<Itemofcards> {
  int gain = 200;
  int totalScore = 0;
  bool isRecoring = false;
  bool isPlaying = false;
  final AudioRecorder audioRecorder = AudioRecorder();
  String? recordingPath;
  AudioPlayer sound = AudioPlayer();

  @override
  void initState() {
    super.initState();
    sound.playerStateStream.listen((state) {
      if (state.processingState == ProcessingState.completed) {
        setState(() {
          isPlaying = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: screenheight,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(
                height: kToolbarHeight,
                child: Row(
                  children: [
                    BackButtonContainer().create(context),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF5A7493),
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                            right: 8.0,
                            top: 4.0,
                            bottom: 4.0,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset('assest/images/diamond.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: Text('$totalScore'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 9,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 16, left: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF5A7493),
                          Color(0xFF8CBBB6),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 11,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: screenheight / 20,
                              bottom: screenheight / 40,
                            ),
                            child: Stack(
                              children: [
                                // Center(
                                //   child: Padding(
                                //     padding: EdgeInsets.only(
                                //       top: screenheight / 18.0,
                                //       bottom: screenheight / 10,
                                //       left: 30,
                                //       right: 30,
                                //     ),
                                //     child: SizedBox(
                                //       height: 2 *
                                //           MediaQuery.of(context).size.height /
                                //           5,
                                //       child: Container(
                                //         decoration: BoxDecoration(
                                //           color: const Color(0xFF5A7493),
                                //           borderRadius:
                                //               BorderRadius.circular(60),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                Center(
                                  child: SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 2,
                                    child: Image.asset(
                                      widget.cards[widget.index].image,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: IconButton(
                                        onPressed: () {
                                          setState(
                                            () {
                                              widget.index -= 1;
                                              if (widget.index < 0) {
                                                widget.index =
                                                    widget.cards.length - 1;
                                              }
                                            },
                                          );
                                        },
                                        icon: const Icon(
                                          Icons.arrow_back_ios,
                                          size: 13,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height: screenheight / 20,
                                        child: Textaa(
                                          child: Text(
                                            widget.cards[widget.index].name,
                                            style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: IconButton(
                                        onPressed: () {
                                          setState(
                                            () {
                                              widget.index += 1;
                                              if (widget.index ==
                                                  widget.cards.length) {
                                                widget.index = 0;
                                              }
                                            },
                                          );
                                        },
                                        icon: const Icon(
                                          Icons.arrow_forward_ios,
                                          size: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: screenheight / 70,
                                    bottom: screenheight / 80),
                                child: Expanded(
                                  flex: 1,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 15,
                                        width: 15,
                                        child: Image.asset(
                                            'assest/images/diamond.png'),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          '$gain',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF5A7493),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            if (!isPlaying) {
                              sound.setAsset(widget.cards[widget.index].sound);
                              sound.play();
                              setState(() {
                                isPlaying = true;
                                totalScore += gain;
                              });
                            } else {
                              sound.stop();
                              setState(() {
                                isPlaying = false;
                              });
                            }
                          },
                          icon: Icon(
                            isPlaying ? Icons.pause : Icons.play_arrow,
                            color: const Color(0xFFD9D9D9),
                            size: 30,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'كرر الكلمة',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenheight / 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

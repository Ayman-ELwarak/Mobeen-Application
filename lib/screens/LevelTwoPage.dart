import 'dart:math';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mobile_app/components/Backend.dart';
import 'package:mobile_app/components/CheckResult.dart';
import 'package:mobile_app/components/CorrectAlert.dart';
import 'package:mobile_app/components/CorrectBackend.dart';
import 'package:mobile_app/components/PostRequestToUpdatePoints.dart';
import 'package:mobile_app/components/RepeatAgainAlert.dart';
import 'package:mobile_app/components/wrongBackend.dart';
import 'package:mobile_app/models/CardsTypeModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Leveltwopage extends StatefulWidget {
  List<Cardstypemodel> cards;
  int index;
  Leveltwopage({
    super.key,
    required this.cards,
    required this.index,
  });

  @override
  State<Leveltwopage> createState() => _LevelonepageState();
}

class _LevelonepageState extends State<Leveltwopage> {
  bool isPlaying = false;
  bool Correct = false;
  bool isLoading = false;
  AudioPlayer sound = AudioPlayer();

  Future<void> action() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String message = await postReqToUpdatePoints(
      '$link/api/v1/users/points',
      prefs.getString('token')!,
      {"points": "20"},
    );
    print('parint1');
    print(message);
    setState(() {
      isLoading = false;
    });
    CorrectAlert(context);
    print('parint2');
    setState(() {
      widget.index += 1;
      Correct = false;
    });
    String message2 = await CorrectBackend('$link/api/v1/users/sections', 4);
    print(message2);
  }

  Future<void> wrongAction() async {
    setState(() {
      isLoading = false;
    });
    RepeatAgainAlert(context);
    String message = await WrongBackend('$link/api/v1/users/sections', 4);
    print(message);
  }

  List<Cardstypemodel> createList(
      {required List<Cardstypemodel> Cards, required int index}) {
    List<Cardstypemodel> list = [];
    list.add(widget.cards[index]);
    List<Cardstypemodel> c = [];
    for (int i = 0; i < Cards.length; i++) {
      if (i == index) continue;
      c.add(Cards[i]);
    }
    c.shuffle(Random());
    for (int i = 0; i < 2; i++) {
      list.add(c[i]);
    }
    list.shuffle(Random());
    return list;
  }

  List<Cardstypemodel> myList = [];

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
    final double screenwidth = MediaQuery.of(context).size.width;
    if (widget.index == widget.cards.length) {
      widget.index = 0;
    }
    if (!Correct) {
      myList = createList(Cards: widget.cards, index: widget.index);
      Correct = true;
    }
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Stack(
          children: [
            Container(
              height: screenheight,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xFFBDB3EB),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: kToolbarHeight / 2,
                  ),
                  Text(
                    'اختر ما يناسب الصوت',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: screenheight / 6,
                  ),
                  SizedBox(
                    width: screenwidth / 2,
                    height: screenheight / 4,
                    child: GestureDetector(
                      onTap: () async {
                        setState(() {
                          isLoading = true;
                        });
                        if (CheckResult(
                            myList: myList,
                            cards: widget.cards,
                            index: widget.index,
                            i: 0)) {
                          await action();
                        } else {
                          wrongAction();
                        }
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: screenwidth / 2,
                            height: screenheight / 4,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              ),
                              shape: BoxShape.circle,
                              color: Color(0xFFBDB3EB),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              width: screenwidth / 2,
                              height: screenheight / 4,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 236, 234, 225),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SizedBox(
                              width: screenwidth / 2,
                              height: screenheight / 4,
                              child: Image.asset(myList[0].image),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: screenwidth / 2,
                        height: screenheight / 4,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 2.0),
                          child: GestureDetector(
                            onTap: () async {
                              setState(() {
                                isLoading = true;
                              });
                              if (CheckResult(
                                  myList: myList,
                                  cards: widget.cards,
                                  index: widget.index,
                                  i: 1)) {
                                await action();
                              } else {
                                wrongAction();
                              }
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: screenwidth / 2,
                                  height: screenheight / 4,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    ),
                                    shape: BoxShape.circle,
                                    color: Color(0xFFBDB3EB),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    width: screenwidth / 2,
                                    height: screenheight / 4,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 236, 234, 225),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: SizedBox(
                                    width: screenwidth / 2,
                                    height: screenheight / 4,
                                    child: Image.asset(myList[1].image),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenwidth / 2,
                        height: screenheight / 4,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: GestureDetector(
                            onTap: () async {
                              setState(() {
                                isLoading = true;
                              });
                              if (CheckResult(
                                  myList: myList,
                                  cards: widget.cards,
                                  index: widget.index,
                                  i: 2)) {
                                await action();
                              } else {
                                wrongAction();
                              }
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: screenwidth / 2,
                                  height: screenheight / 4,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    ),
                                    shape: BoxShape.circle,
                                    color: Color(0xFFBDB3EB),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    width: screenwidth / 2,
                                    height: screenheight / 4,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 236, 234, 225),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: SizedBox(
                                    width: screenwidth / 2,
                                    height: screenheight / 4,
                                    child: Image.asset(myList[2].image),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      width: screenwidth / 5,
                      height: screenheight / 7,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF90609F),
                      ),
                      child: IconButton(
                        onPressed: () {
                          if (!isPlaying) {
                            sound.setAsset(widget.cards[widget.index].sound);
                            sound.play();
                            setState(() {
                              isPlaying = true;
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
                          size: screenwidth / 7,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: isLoading ? CircularProgressIndicator() : SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}

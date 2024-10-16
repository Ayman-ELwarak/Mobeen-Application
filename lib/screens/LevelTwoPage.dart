import 'dart:math';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/CheckResult.dart';
import 'package:mobile_app/components/CorrectAlert.dart';
import 'package:mobile_app/components/Menu.dart';
import 'package:mobile_app/components/RepeatAgainAlert.dart';
import 'package:mobile_app/models/CardsTypeModel.dart';

class Leveltwopage extends StatefulWidget {
  List<Cardstypemodel> cards;
  int index;
  Color color;

  Leveltwopage(
      {super.key,
      required this.cards,
      required this.index,
      required this.color});

  @override
  State<Leveltwopage> createState() => _LevelonepageState();
}

class _LevelonepageState extends State<Leveltwopage> {
  bool isPlaying = false;
  bool Correct = false;
  AudioPlayer sound = AudioPlayer();

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
        child: Container(
          height: screenheight,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xFF7FA0C5),
          ),
          child: Column(
            children: [
              SizedBox(
                height: kToolbarHeight,
                child: Row(
                  children: [
                    BackButtonContainer().create(context),
                    const Spacer(),
                    const Menu(),
                  ],
                ),
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
                height: screenwidth / 2,
                child: GestureDetector(
                  onTap: () {
                    if (CheckResult(
                        myList: myList,
                        cards: widget.cards,
                        index: widget.index,
                        i: 0)) {
                      CorrectAlert(context);
                      setState(() {
                        widget.index += 1;
                        Correct = false;
                      });
                    } else {
                      RepeatAgainAlert(context);
                    }
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: screenwidth / 2,
                        height: screenwidth / 2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                          shape: BoxShape.circle,
                          color: Color(0xFF7FA0C5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: screenwidth / 2,
                          height: screenwidth / 2,
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
                          height: screenwidth / 2,
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
                    height: screenwidth / 2,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 2.0),
                      child: GestureDetector(
                        onTap: () {
                          if (CheckResult(
                              myList: myList,
                              cards: widget.cards,
                              index: widget.index,
                              i: 1)) {
                            CorrectAlert(context);
                            setState(() {
                              widget.index += 1;
                              Correct = false;
                            });
                          } else {
                            RepeatAgainAlert(context);
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: screenwidth / 2,
                              height: screenwidth / 2,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                                shape: BoxShape.circle,
                                color: Color(0xFF7FA0C5),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                width: screenwidth / 2,
                                height: screenwidth / 2,
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
                                height: screenwidth / 2,
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
                    height: screenwidth / 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: GestureDetector(
                        onTap: () {
                          if (CheckResult(
                              myList: myList,
                              cards: widget.cards,
                              index: widget.index,
                              i: 2)) {
                            CorrectAlert(context);
                            setState(() {
                              widget.index += 1;
                              Correct = false;
                            });
                          } else {
                            RepeatAgainAlert(context);
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: screenwidth / 2,
                              height: screenwidth / 2,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                                shape: BoxShape.circle,
                                color: Color(0xFF7FA0C5),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                width: screenwidth / 2,
                                height: screenwidth / 2,
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
                                height: screenwidth / 2,
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
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(
                  width: screenwidth / 5,
                  height: screenwidth / 5,
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
                      size: screenwidth / 6,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

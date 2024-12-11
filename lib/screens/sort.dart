import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class Sort extends StatefulWidget {
  final List<String> correctOrder;

  Sort({required this.correctOrder});

  @override
  _SortState createState() => _SortState();
}

class _SortState extends State<Sort> {
  List<String> images = [];
  List<String?> answers = [null, null, null, null];
  List<bool> correct = [false, false, false, false];
  List<Widget> squareImages = List.generate(4, (index) => Container());
  List<bool> showError = [false, false, false, false];
  List<int> errorAttempts = [0, 0, 0, 0];

  void initializeImages() {
    images = List.from(widget.correctOrder);
    images.shuffle(Random());
  }

  void checkAnswers() {
    if (correct.every((element) => element)) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("تهنئة!"),
          content: Text("أحسنت! لقد أكملت المهمة بنجاح."),
          actions: [
            TextButton(
              child: Text("حسناً"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    }
  }

  void resetGame() {
    setState(() {
      answers = [null, null, null, null];
      correct = [false, false, false, false];
      squareImages = List.generate(4, (index) => Container());
      showError = [false, false, false, false];
      errorAttempts = [0, 0, 0, 0];
      initializeImages();
    });
  }

  void showErrorIcon(int index) {
    setState(() {
      showError[index] = true;
      errorAttempts[index]++;
    });

    if (errorAttempts[index] > 1) {
      resetGame();
      return;
    }

    Timer(Duration(milliseconds: 300), () {
      setState(() {
        showError[index] = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    initializeImages();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final screenHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: screenHeight,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xFFA78CB0),
          ),
          child: Column(
            children: [
              SizedBox(
                height: kToolbarHeight / 2,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                        ),
                        itemCount: 4,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return DragTarget<String>(
                            onAccept: (data) {
                              setState(() {
                                if (answers[index] == null) {
                                  if (data == widget.correctOrder[index]) {
                                    answers[index] = data;
                                    correct[index] = true;
                                    squareImages[index] = Image.asset(data);
                                    images.remove(data);
                                    checkAnswers();
                                  } else {
                                    showErrorIcon(index);
                                  }
                                }
                              });
                            },
                            builder: (context, candidateData, rejectedData) {
                              return Container(
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    squareImages[index],
                                    if (answers[index] == null)
                                      Positioned(
                                        top: 5,
                                        left: 5,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF3F0352),
                                          ),
                                          padding: EdgeInsets.all(10.0),
                                          child: Text(
                                            ['١', '٢', '٣', '٤'][index],
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    if (correct[index])
                                      Positioned(
                                        child: Icon(Icons.check,
                                            color: Colors.green, size: 60),
                                      ),
                                    if (showError[index])
                                      Positioned(
                                        child: Icon(Icons.close,
                                            color: Colors.red, size: 60),
                                      ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(images.length, (index) {
                      return Draggable<String>(
                        data: images[index],
                        child: Image.asset(
                          images[index],
                          width: screenWidth * 0.15,
                          height: screenHeight * 0.1,
                        ),
                        feedback: Image.asset(
                          images[index],
                          width: screenWidth * 0.15,
                          height: screenHeight * 0.1,
                        ),
                        childWhenDragging: Container(),
                      );
                    }).toList(),
                  ),
                  IconButton(
                    icon: Icon(Icons.refresh, size: 30),
                    onPressed: resetGame,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

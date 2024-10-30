import 'package:flutter/material.dart';
import 'package:mobile_app/components/Menu.dart';
import 'sort.dart';

class StoryType extends StatefulWidget {
  final List<String> images;

  StoryType({required this.images});

  @override
  _StoryTypeState createState() => _StoryTypeState();
}

class _StoryTypeState extends State<StoryType> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight =
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
                height: kToolbarHeight,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16.0),
                      decoration: const BoxDecoration(
                        color: Color(0xFF3F0352),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight / 12,
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.6,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.arrow_left),
                                    color: currentIndex == 0
                                        ? Colors.grey
                                        : Colors.purple,
                                    onPressed: currentIndex == 0
                                        ? null
                                        : () {
                                            setState(() {
                                              currentIndex--;
                                            });
                                          },
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        widget.images[currentIndex],
                                        fit: BoxFit.contain,
                                        height: screenHeight * 0.4,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.arrow_right),
                                    color:
                                        currentIndex == widget.images.length - 1
                                            ? Colors.purple
                                            : Colors.purple,
                                    onPressed: () {
                                      if (currentIndex <
                                          widget.images.length - 1) {
                                        setState(() {
                                          currentIndex++;
                                        });
                                      } else {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Sort(
                                                correctOrder: widget.images),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ['١', '٢', '٣', '٤'][currentIndex],
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ],
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

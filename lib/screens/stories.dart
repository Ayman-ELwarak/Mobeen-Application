import 'package:flutter/material.dart';
import 'package:mobile_app/components/Backend.dart';
import 'package:mobile_app/components/CorrectBackend.dart';
import 'package:mobile_app/components/GetRequest.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'story_type.dart';

class Stories extends StatelessWidget {
  final List<List<String>> items;
  final List<Map<String, String>> buttons;

  Stories({required this.items, required this.buttons});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    int crossAxisCount;
    double childAspectRatio;

    if (screenWidth <= 600) {
      crossAxisCount = 2;
      childAspectRatio = 1;
    } else if (screenWidth <= 1000) {
      crossAxisCount = 3;
      childAspectRatio = 0.85;
    } else {
      crossAxisCount = 4;
      childAspectRatio = 0.75;
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: screenHeight,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xFF9CD8DE),
          ),
          child: Column(
            children: [
              SizedBox(
                height: kToolbarHeight / 2,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: screenWidth * 0.03,
                    left: screenWidth * 0.03,
                    bottom: screenHeight * 0.01,
                  ),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      childAspectRatio: childAspectRatio,
                      crossAxisSpacing: screenWidth * 0.02,
                      mainAxisSpacing: screenHeight * 0.02,
                    ),
                    itemCount: buttons.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  StoryType(images: items[index]),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.1),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Image.asset(
                                  buttons[index]['image']!,
                                  height: screenHeight * 0.1,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Text(
                                buttons[index]['text']!,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: screenWidth <= 600 ? 14 : 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
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

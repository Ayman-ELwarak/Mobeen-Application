import 'package:flutter/material.dart';
import 'package:mobile_app/components/letters_list.dart';
import 'package:mobile_app/screens/letter_videos.dart';

class Letters_page extends StatelessWidget {

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
                    itemCount: letter_list.letter_img.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Letters_vid_Page(Videos:letter_list.letter_video,index: index,),
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
                                  letter_list.letter_img[index],
                                  height: screenHeight * 0.1,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
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

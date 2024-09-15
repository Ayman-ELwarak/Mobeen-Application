import 'package:flutter/material.dart';

import 'package:mobile_app/components/article_list.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/Menu.dart';

// ignore: must_be_immutable
class ArticlePage extends StatelessWidget {
  int index;
  static List<String> images = Article_list.img;
  static List<String> name = Article_list.title;
  static List<Text> captian = Article_list.cap;

  ArticlePage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: screenHeight,
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
                     BackButtonContainer().create(context), // Optional: Add back button if needed
                    const Spacer(),
                     Menu(), // Optional: Add menu if needed
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        textAlign: TextAlign.end,
                        name[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                      child: captian[index]
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 15, right: 15, bottom: 10),
                      child: Container(
                        height: 350,
                        width: double.infinity,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
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
    );
  }
}

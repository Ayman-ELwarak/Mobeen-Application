import 'package:flutter/material.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/Menu.dart';
import 'package:mobile_app/models/ArticleModel.dart';
import 'package:mobile_app/models/FeatureModel.dart';
import 'package:mobile_app/screens/All_Exercises.dart';
import 'package:mobile_app/screens/Articles.dart';
import 'package:mobile_app/screens/CardsPage.dart';
import 'package:mobile_app/screens/Diagnosis.dart';
import 'package:mobile_app/screens/Translator.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
  List<Featuremodel> Features = [
    Featuremodel(
        image: 'assest/images/Diagnosis.jpg',
        text: 'Diagnosis',
        page: const Diagnosis()),
    Featuremodel(
        image: 'assest/images/Voice_Reconstructor.jpg',
        text: 'Voice Reconstructor',
        page: const Translator()),
    Featuremodel(
        image: 'assest/images/Cards_Game.jpg',
        text: 'Cards Game',
        page: Cardspage()),
    Featuremodel(
        image: 'assest/images/Exercises.jpg',
        text: 'Exercises',
        page: Exercises()),
  ];
  // ignore: non_constant_identifier_names
  List<Articlemodel> Articles = [
    Articlemodel(
        image: 'assest/images/Article.jpg',
        title: 'Early signs of speech disorders'),
    Articlemodel(
        image: 'assest/images/Article.jpg',
        title: 'Early signs of speech disorders'),
    Articlemodel(
        image: 'assest/images/Article.jpg',
        title: 'Early signs of speech disorders'),
    Articlemodel(
        image: 'assest/images/Article.jpg',
        title: 'Early signs of speech disorders'),
    Articlemodel(
        image: 'assest/images/Article.jpg',
        title: 'Early signs of speech disorders'),
    Articlemodel(
        image: 'assest/images/Article.jpg',
        title: 'Early signs of speech disorders'),
  ];
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assest/images/backgrondHomePage.jpg"),
                  fit: BoxFit
                      .cover, // Adjusts how the image is fitted into the space
                ),
              ),
            ),
            Column(
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
                const Padding(
                  padding: EdgeInsets.only(bottom: 100.0),
                  child: Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'S',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xFF8CBBB6),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "peech",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'a',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xFF8CBBB6),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "ble",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Features',
                      style: TextStyle(
                        fontSize: 27,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Divider(
                    color: Color(0xFF8CBBB6),
                    height: 0,
                    indent: 175,
                    endIndent: 175,
                    thickness: 4,
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Features.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Features[index].page;
                                },
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 6,
                                child: Image.asset(Features[index].image),
                              ),
                              Text(
                                Features[index].text,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Divider(
                  color: Color(0xFFD8DADC),
                  indent: 60,
                  endIndent: 60,
                  thickness: 3,
                ),
                const Expanded(
                  flex: 2,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Articles',
                      style: TextStyle(
                        fontSize: 27,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Divider(
                    color: Color(0xFF8CBBB6),
                    height: 0,
                    indent: 175,
                    endIndent: 175,
                    thickness: 4,
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: ListView.builder(
                    itemCount: Articles.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height / 9,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ArticlePage(index: 0);
                                },
                              ),
                            );
                          },
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                  right: 8.0,
                                  bottom: 4,
                                  top: 4,
                                ),
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 9,
                                  child: Image.asset(Articles[index].image),
                                ),
                              ),
                              Center(
                                child: Text(Articles[index].title),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

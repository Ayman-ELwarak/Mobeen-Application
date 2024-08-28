import 'package:flutter/material.dart';
import 'package:mobile_app/components/Menu.dart';
import 'package:mobile_app/models/ArticleModel.dart';
import 'package:mobile_app/models/FeatureModel.dart';
import 'package:mobile_app/screens/CardsPage.dart';
import 'package:mobile_app/screens/Diagnosis.dart';
import 'package:mobile_app/screens/Exercises.dart';
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
        page: ExercisePage()),
  ];
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: const [Menu()],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assest/images/backgrondHomePage.jpg"),
                fit: BoxFit
                    .cover, // Adjusts how the image is fitted into the space
              ),
            ),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 100.0),
                child: Expanded(
                  flex: 2,
                  child: Text(
                    " Speechable ",
                    style: TextStyle(
                      fontSize: 35,
                      decoration: TextDecoration.underline,
                      color: Color(0xFF1E3A3D),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                    ),
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
                              height: MediaQuery.of(context).size.height / 9,
                              child: Image.asset(Articles[index].image),
                            ),
                          ),
                          Center(
                            child: Text(Articles[index].title),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

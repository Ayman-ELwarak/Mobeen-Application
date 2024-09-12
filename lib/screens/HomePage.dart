import 'package:flutter/material.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/Menu.dart';
import 'package:mobile_app/components/TextaA.dart';
import 'package:mobile_app/models/ArticleModel.dart';
import 'package:mobile_app/screens/All_Exercises.dart';
import 'package:mobile_app/screens/Articles.dart';
import 'package:mobile_app/screens/CardsPage.dart';
import 'package:mobile_app/screens/Diagnosis.dart';
import 'package:mobile_app/screens/Translator.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
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
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Stack(
          children: [
            Container(
              height: screenheight,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assest/images/backgroundHomePage.jpg"),
                  fit: BoxFit.fill,
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Textaa(
                    child: const Text(
                      "كيف يمكنني مساعدتك ؟",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const Diagnosis();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height / 4.5,
                              width:
                                  (MediaQuery.of(context).size.width - 42) / 2,
                              decoration: BoxDecoration(
                                color:
                                    const Color(0xFFF55454).withOpacity(0.48),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: screenheight / 40,
                                      left: 4,
                                      right: 4,
                                    ),
                                    child: SizedBox(
                                      height: screenheight / 23,
                                      child: Textaa(
                                        child: const Text(
                                          "التشخيص",
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: screenheight / 18,
                                        left: 90,
                                        bottom: screenheight / 40,
                                        right: 20),
                                    child: SizedBox(
                                      height: screenheight / 13,
                                      child: Image.asset(
                                          'assest/images/Diagnosis.png'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const Translator();
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height / 4.5,
                                width:
                                    (MediaQuery.of(context).size.width - 42) /
                                        2,
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFFC78FF3).withOpacity(0.48),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: screenheight / 40,
                                        left: 4,
                                        right: 4,
                                      ),
                                      child: SizedBox(
                                        height: screenheight / 23,
                                        child: Textaa(
                                          child: const Text(
                                            "المترجم",
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: screenheight / 18,
                                          left: 70,
                                          bottom: screenheight / 40,
                                          right: 20),
                                      child: SizedBox(
                                        height: screenheight / 13,
                                        child: Image.asset(
                                            'assest/images/Voice_Reconstructor.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Cardspage();
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height / 4.5,
                                width:
                                    (MediaQuery.of(context).size.width - 42) /
                                        2,
                                decoration: BoxDecoration(
                                  color: Color(0xFF86BEFF).withOpacity(0.48),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: screenheight / 40,
                                        left: 4,
                                        right: 4,
                                      ),
                                      child: SizedBox(
                                        height: screenheight / 23,
                                        child: Textaa(
                                          child: const Text(
                                            "بطاقات التخاطب",
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: screenheight / 40,
                                          left: 70,
                                          bottom: screenheight / 45,
                                          right: 20),
                                      child: SizedBox(
                                        height: screenheight / 9,
                                        child: Image.asset(
                                            'assest/images/Cards_Game.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const AllExercises();
                                      },
                                    ),
                                  );
                                },
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 4.5,
                                  width:
                                      (MediaQuery.of(context).size.width - 42) /
                                          2,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFD233)
                                        .withOpacity(0.48),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: screenheight / 40,
                                          left: 4,
                                          right: 4,
                                        ),
                                        child: SizedBox(
                                          height: screenheight / 23,
                                          child: Textaa(
                                            child: const Text(
                                              "التمارين",
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: screenheight / 18,
                                            left: 70,
                                            bottom: screenheight / 40,
                                            right: 20),
                                        child: SizedBox(
                                          height: screenheight / 13,
                                          child: Image.asset(
                                              'assest/images/Exercises.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: screenheight / 10,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9).withOpacity(0.90),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: SizedBox(
                          height: screenheight / 20,
                          child: Textaa(
                            child: const Text(
                              'المقالات',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Divider(
                          color: const Color(0xFF86BEFF).withOpacity(0.54),
                          height: 0,
                          indent: 175,
                          endIndent: 175,
                          thickness: 4,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: Articles.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
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
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        left: 4.0,
                                        right: 4,
                                      ),
                                      child: Text(
                                        "العلامات المبكرة للاضطرابات اللغوية",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 8),
                                      child: Row(
                                        children: [
                                          const Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 3.0),
                                              child: Text(
                                                " هو خلل في نطق الطفل لبعض الأصوات اللغوية يظهر في واحد أو أكثر من الاضطرابات التالية: إبدال (نطق صوت بدلاً من صوت آخر)، أو حذف (نطق الكلمة ناقصة صوتاً أو أكثر)، أو تحريف وتشويه (نطق الصوت بصورة تشبه الصوت الأصلي غير أنه لا يماثله تماماً)، أو إضافة وضع صوتاً زائدًا إلى الكلمة",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Image.asset(
                                              "assest/images/photo.png",
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 16.0, bottom: 16),
                              child: Container(
                                height: 15,
                                width: MediaQuery.of(context).size.width,
                                color:
                                    const Color(0xFFD9D9D9).withOpacity(0.90),
                              ),
                            )
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
      ),
    );
  }
}

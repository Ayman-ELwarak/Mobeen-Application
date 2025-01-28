import 'package:flutter/material.dart';
import 'package:mobile_app/components/TextaA.dart';
import 'package:mobile_app/components/article_list.dart';
import 'package:mobile_app/screens/Articles.dart';
import 'package:mobile_app/screens/Diagnosis.dart';
import 'package:mobile_app/screens/SigninPage.dart';
import 'package:mobile_app/screens/Translator.dart';
import 'package:mobile_app/screens/rehabilitation.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class Homepage extends StatefulWidget {
  // ignore: non_constant_identifier_names

  static List<String> images = Article_list.img;
  static List<String> name = Article_list.title;
  static List<Text> captian = Article_list.Homecap;

  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Stack(
          children: [
            Container(
              height: screenheight,
              width: screenwidth,
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: screenwidth / 25,
                left: screenwidth / 25,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: kToolbarHeight / 2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: screenheight / 30),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            setState(() {
                              isLoading = true;
                            });
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            await prefs.setBool('isLoggedIn', false);
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Signinpage();
                                },
                              ),
                            );
                            setState(() {
                              isLoading = false;
                            });
                          },
                          child: Icon(Icons.logout),
                        ),
                        Spacer(),
                        SizedBox(
                          height: screenheight / 23,
                          child: Textaa(
                            child: Text(
                              'كيف يمكنني مساعدتك ؟',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF727171),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: screenheight / 30),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: screenwidth / 40),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Translator();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              height: screenheight / 3.5,
                              width: screenwidth / 2.3,
                              decoration: BoxDecoration(
                                color: const Color(0xFFD3F6F9),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Spacer(),
                                  SizedBox(
                                    height: screenheight / 10,
                                    width: screenwidth / 3,
                                    child: Image.asset(
                                        'assest/images/Voice_Reconstructor.png'),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    height: screenheight / 23,
                                    child: Textaa(
                                      child: const Text(
                                        "المترجم",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: screenwidth / 40),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: screenheight / 150),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return Diagnosis();
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: screenheight / 7,
                                    width: screenwidth / 2.3,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFDDED9),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          blurRadius: 10,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Spacer(),
                                        SizedBox(
                                          height: screenheight / 15,
                                          width: screenwidth / 3,
                                          child: Image.asset(
                                              'assest/images/Diagnosis.png'),
                                        ),
                                        Spacer(),
                                        SizedBox(
                                          height: screenheight / 23,
                                          child: Textaa(
                                            child: const Text(
                                              "التشخيص",
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: screenheight / 150),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return RehabilitationPage();
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: screenheight / 7,
                                    width: screenwidth / 2.3,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFDDD1EC),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 10,
                                          offset: Offset(0, 5),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Spacer(),
                                        SizedBox(
                                          height: screenheight / 15,
                                          width: screenwidth / 2.5,
                                          child: Image.asset(
                                              'assest/images/Speech_development.png'),
                                        ),
                                        Spacer(),
                                        SizedBox(
                                          height: screenheight / 23,
                                          child: Textaa(
                                            child: const Text(
                                              "التأهيل",
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                      ],
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
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenheight / 30,
                    ),
                    child: Row(
                      children: [
                        Spacer(),
                        SizedBox(
                          height: screenheight / 17,
                          child: Textaa(
                            child: Text(
                              'المقالات',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: Homepage.name.length,
                      itemBuilder: (context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: screenheight / 60),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ArticlePage(
                                      index: index,
                                    );
                                  },
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFF3F1F1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: screenwidth / 30,
                                              right: screenwidth / 30,
                                              top: screenheight / 90,
                                            ),
                                            child: Textaa(
                                              child: Text(
                                                Homepage.name[index],
                                                style: const TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: screenwidth / 30,
                                              right: screenwidth / 30,
                                              bottom: screenheight / 90,
                                            ),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: SizedBox(
                                                    height: screenheight / 12,
                                                    width: screenwidth / 5,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.grey),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                        child: Image.asset(
                                                          Homepage
                                                              .images[index],
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 3.0,
                                                            right: 3),
                                                    child:
                                                        Homepage.captian[index],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
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

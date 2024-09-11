import 'package:flutter/material.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/Menu.dart';

// ignore: must_be_immutable
class ArticlePage extends StatelessWidget {
  int index;
  static List<String> images = [];
  static List<String> name = [];
  static List<String> captian = [];

  ArticlePage({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: screenheight,
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
                    BackButtonContainer().create(context),
                    const Spacer(),
                    const Menu(),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        textAlign: TextAlign.end,
                        'العلامات المبكرة للاضطرابات اللغوية',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                      child: Text(
                        textAlign: TextAlign.end,
                        'اضطراب الكلام هو أي حالة تؤثر على قدرة الشخص على إنتاج الأصوات التي تشكل الكلمات. قد يحدث ذلك نتيجة تلف العضلات والأعصاب والهياكل الصوتية. ومن الأمثلة على ذلك التلعثم والترنح.',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                      child: Text(
                        textAlign: TextAlign.end,
                        " يُعد الكلام أحد الطرق الرئيسية التي يتواصل بها الأشخاص مع الآخرين للتعبير عن أفكارهم ومشاعرهم وآرائهم. يتطلب فعل الكلام التنسيق الدقيق لأجزاء متعددة من الجسم، بما في ذلك الرأس والرقبة والصدر والبطن. في هذه المقالة، نستكشف ما هي اضطرابات الكلام وأنواعها المختلفة. كما نغطي أعراض اضطرابات الكلام وأسبابها وتشخيصها وعلاجها.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 15, right: 15, bottom: 10),
                      child: Container(
                        height: 350,
                        width: double.infinity,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://th.bing.com/th/id/OIP.RwzFtxw1qHoXWOXefLZKpAHaDB?rs=1&pid=ImgDetMain"),
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
          //backgroundColor: const Color(0xFF1E3A3D),
        ),
      ),
    );
  }
}

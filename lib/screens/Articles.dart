import 'package:flutter/material.dart';

class Articles extends StatelessWidget {
  late int index;
  Articles(this.index);
  static List<String> images = [
  ];
  static List<String> name = [

  ];
  static List<String> captian = [

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            const Padding(
              padding: EdgeInsets.only(top: 100, left: 15),
              child: SizedBox(
                width: 352,
                child: Text(
                  'What are speech disorders?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top:10,left: 10),
              child: SizedBox(
                width: 350,
                child: Text(
                  'A speech disorder is any condition that affects a person’s ability to produce sounds that create words. Damage to muscles, nerves, and vocal structures can cause it. Examples include stuttering and ataxia.',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top:20,left: 10),
              child: SizedBox(
                width: 350,
                child: Text(
                  "Speech is one of the main ways in which people communicate their thoughts, feelings, and ideas with others. The act of speaking requires the precise coordination of multiple body parts, including the head, neck, chest, and abdomen. In this article, we explore what speech disorders are and the different types. We also cover the symptoms, causes, diagnosis, and treatment of speech disorders.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Container(
                width: 365,
                height: 300,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://th.bing.com/th/id/OIP.RwzFtxw1qHoXWOXefLZKpAHaDB?rs=1&pid=ImgDetMain"),
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
      //backgroundColor: const Color(0xFF1E3A3D),
    );
  }
}
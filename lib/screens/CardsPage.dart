// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:mobile_app/models/CardModel.dart';

// ignore: must_be_immutable
class Cardspage extends StatelessWidget {
  List<Cardmodel> items = [
    Cardmodel(
      item_name: 'Food',
      color: const Color(0xFF8CBBB6),
      image: 'assest/images/food.png',
    ),
    Cardmodel(
      item_name: 'Animals',
      color: const Color(0xFFFFD18B),
      image: 'assest/images/animals.png',
    ),
    Cardmodel(
      item_name: 'Jobs',
      color: const Color(0xFF618184),
      image: 'assest/images/jobs.png',
    ),
    Cardmodel(
      item_name: 'Family',
      color: const Color(0xFFA077AE),
      image: 'assest/images/family.png',
    ),
  ];
  Cardspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Column(
            children: getItem(),
          ),
        ),
      ),
    );
  }

  List<GestureDetector> getItem() {
    List<GestureDetector> item = [];
    for (int i = 0; i < items.length; i++) {
      item.add(
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 64,
            ),
            child: Container(
              height: 120,
              width: 380,
              decoration: BoxDecoration(
                color: items[i].color,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SizedBox(
                      height: 100,
                      width: 120,
                      child: Image.asset(items[i].image),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: SizedBox(
                      height: 70,
                      width: 200,
                      child: Center(
                        child: Text(
                          items[i].item_name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
    return item;
  }
}

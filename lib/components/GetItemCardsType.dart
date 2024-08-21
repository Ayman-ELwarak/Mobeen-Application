import 'package:flutter/material.dart';
import 'package:mobile_app/models/CardsTypeModel.dart';

List<GestureDetector> getItemscardtype(BuildContext context, List<Cardstypemodel> items) {
    List<GestureDetector> item = [];
    for (int i = 0; i < items.length; i++) {
      item.add(
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 32,
            ),
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFD18B), // Background color
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            height: 150,
                            width: 100,
                            child: Image.asset(items[i].image),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: SizedBox(
                      height: 70,
                      width: 180,
                      child: Center(
                        child: Text(
                          items[i].name, // text
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 35,
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
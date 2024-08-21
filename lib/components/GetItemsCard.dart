import 'package:flutter/material.dart';
import 'package:mobile_app/components/AnimalsList.dart';
import 'package:mobile_app/components/FamilyList.dart';
import 'package:mobile_app/components/FoodList.dart';
import 'package:mobile_app/components/JobsList.dart';
import 'package:mobile_app/models/CardModel.dart';

List<GestureDetector> getItemscard(BuildContext context, List<Cardmodel> items) {
    List<GestureDetector> item = [];
    for (int i = 0; i < items.length; i++) {
      item.add(
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  if (items[i].item_name == 'Food') {
                    return Foodlist();
                  } else if (items[i].item_name == 'Animals') {
                    return Animalslist();
                  } else if (items[i].item_name == 'Jobs') {
                    return Jobslist();
                  } else {
                    return Familylist();
                  }
                },
              ),
            );
          },
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
                      width: 170,
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
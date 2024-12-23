import 'package:flutter/material.dart';
import 'package:mobile_app/components/TextaA.dart';
import 'package:mobile_app/models/CardModel.dart';
import 'package:mobile_app/screens/CardTypePage.dart';

List<GestureDetector> getItemscard(
    BuildContext context, List<Cardmodel> items, double paddingListview) {
  // calculate the size of screen
  const int numOfItemsPerScreen = 3;
  final double screenheight = MediaQuery.of(context).size.height -
      (MediaQuery.of(context).padding.top + kToolbarHeight + paddingListview);
  final double screenwidth = MediaQuery.of(context).size.width;
  const double totalspace = (numOfItemsPerScreen) * 70;
  final double itemheight = (screenheight - totalspace) / numOfItemsPerScreen;
  //
  List<GestureDetector> item = [];
  for (int i = 0; i < items.length; i++) {
    if (i % 2 == 1) {
      item.add(
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Cardtypepage(items: items[i].items);
                },
              ),
            );
          },
          child: Padding(
            padding: EdgeInsets.only(
                bottom: screenheight / 30,
                left: screenwidth / 30,
                right: screenwidth / 30),
            child: Container(
              height: itemheight,
              decoration: BoxDecoration(
                color: items[i].color,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Spacer(),
                  Expanded(
                    flex: 4,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(right: screenwidth / 30),
                        child: Textaa(
                          child: Text(
                            items[i].item_name, // text
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Image.asset(items[i].image),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      item.add(
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Cardtypepage(items: items[i].items);
                },
              ),
            );
          },
          child: Padding(
            padding: EdgeInsets.only(
                bottom: screenheight / 30,
                left: screenwidth / 30,
                right: screenwidth / 30),
            child: Container(
              height: itemheight,
              decoration: BoxDecoration(
                color: items[i].color,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Spacer(),
                  Expanded(
                    flex: 3,
                    child: Image.asset(items[i].image),
                  ),
                  Expanded(
                    flex: 4,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: screenwidth / 30),
                        child: Textaa(
                          child: Text(
                            items[i].item_name, // text
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
      );
    }
  }
  return item;
}

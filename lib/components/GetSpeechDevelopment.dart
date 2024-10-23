import 'package:flutter/material.dart';
import 'package:mobile_app/models/SpeechDevelopmentModel.dart';

List<GestureDetector> getSpeechDevelopment(BuildContext context,
    List<Speechdevelopmentmodel> items, double paddingListview) {
  // calculate the size of screen
  const int numOfItemsPerScreen = 3;
  final double screenheight = MediaQuery.of(context).size.height -
      (MediaQuery.of(context).padding.top + kToolbarHeight + paddingListview);
  const double totalspace = (numOfItemsPerScreen) * 70;
  final double itemheight = (screenheight - totalspace) / numOfItemsPerScreen;
  //
  List<GestureDetector> item = [];
  for (int i = 0; i < items.length; i++) {
    item.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return items[i].page;
              },
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 55, left: 20, right: 20),
          child: Container(
            height: itemheight,
            decoration: BoxDecoration(
              color: items[i].color,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, top: 32, right: 16, bottom: 32.0),
                      child: Center(
                        child: Text(
                          items[i].name, // text
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Image.asset(items[i].image),
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

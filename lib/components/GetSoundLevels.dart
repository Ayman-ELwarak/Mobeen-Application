import 'package:flutter/material.dart';
import 'package:mobile_app/components/TextaA.dart';
import 'package:mobile_app/models/CardsTypeModel.dart';
import 'package:mobile_app/models/ItemLevel.dart';
import 'package:mobile_app/screens/LevelFivePage.dart';
import 'package:mobile_app/screens/LevelFourPage.dart';
import 'package:mobile_app/screens/LevelOnePage.dart';
import 'package:mobile_app/screens/LevelThreePage.dart';
import 'package:mobile_app/screens/LevelTwoPage.dart';

class Getsoundlevels extends StatefulWidget {
  final List<Cardstypemodel> cards;

  Getsoundlevels({
    Key? key,
    required this.cards,
  }) : super(key: key);

  @override
  State<Getsoundlevels> createState() => _GetsoundlevelsState();
}

class _GetsoundlevelsState extends State<Getsoundlevels> {
  List<Itemlevel> items = [
    Itemlevel(text: '1', flag: false),
    Itemlevel(text: '2', flag: false),
    Itemlevel(text: '3', flag: false),
    Itemlevel(text: '4', flag: false),
    Itemlevel(text: '5', flag: false),
  ];

  @override
  Widget build(BuildContext context) {
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final double screenwidth = MediaQuery.of(context).size.width;
    final List<Widget> navigationPages = [
      Levelonepage(cards: widget.cards, index: 0),
      Leveltwopage(cards: widget.cards, index: 0),
      Levelthreepage(cards: widget.cards, index: 0),
      Levelfourpage(cards: widget.cards, index: 0),
      Levelfivepage(cards: widget.cards, index: 0),
    ];
    return Container(
      height: screenheight / 5.5,
      child: Column(
        children: [
          SizedBox(
            height: screenheight / 17,
            child: Textaa(
              child: Text(
                'اختر المستوى',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  shadows: [
                    Shadow(
                      offset: Offset(1.0, 3.0),
                      blurRadius: 8.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(items.length, (index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: screenwidth / 90,
                  left: screenwidth / 90,
                ),
                child: GestureDetector(
                  onTap: () async{
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => navigationPages[index],
                      ),
                    );
                    setState(() {
                      items[index].flag = true;                     
                    });
                    await Future.delayed(Duration(milliseconds: 500));
                    setState(() {
                       items[index].flag = false;
                    });
                  },
                  child: Container(
                    height: screenheight / 10,
                    width: screenwidth / 7,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: !items[index].flag
                            ? Color(0xFFD9D9D9)
                            : Colors.black,
                        width: 1.0, 
                      ),
                      color:
                          !items[index].flag ? Color(0xFFD9D9D9) : Colors.green,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: const Offset(1, 5),
                        ),
                      ],
                    ),
                    child: Center(
                      child: SizedBox(
                        height: screenheight / 17,
                        child: Textaa(
                          child: Text(
                            items[index].text,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: !items[index].flag
                                  ? Colors.black
                                  : Colors.white,
                              shadows: [
                                Shadow(
                                  offset: Offset(1.0, 3.0),
                                  blurRadius: 8.0,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

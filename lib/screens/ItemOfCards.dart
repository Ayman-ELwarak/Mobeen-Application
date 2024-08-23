// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/models/CardsTypeModel.dart';

// ignore: must_be_immutable
class Itemofcards extends StatefulWidget {
  List<Cardstypemodel> cards;
  int index;
  Itemofcards({super.key, required this.cards, required this.index});

  @override
  State<Itemofcards> createState() => _Itemofcards();
}

class _Itemofcards extends State<Itemofcards> {
  int gain = 200;
  int totalScore = 400;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButtonContainer().create(context),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF9DCCC7),
                borderRadius: BorderRadius.circular(60),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                  top: 4.0,
                  bottom: 4.0,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset('assest/images/diamond.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0),
                      child: Text('$totalScore'),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 12,
            child: Padding(
              padding: const EdgeInsets.only(top: 32.0, right: 16, left: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF8CBBB6),
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 11,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 64.0, bottom: 16),
                        child: Stack(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 50.0,
                                  bottom: 100,
                                  left: 30,
                                  right: 30,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF9DCCC7),
                                    borderRadius: BorderRadius.circular(60),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child:
                                  Image.asset(widget.cards[widget.index].image),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        widget.index -= 1;
                                        if (widget.index < 0) {
                                          widget.index =
                                              widget.cards.length - 1;
                                        }
                                      },
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back_ios,
                                    size: 13,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Text(
                                  widget.cards[widget.index].name,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        widget.index += 1;
                                        if (widget.index ==
                                            widget.cards.length) {
                                          widget.index = 0;
                                        }
                                      },
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 15,
                                width: 15,
                                child: Image.asset('assest/images/diamond.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('$gain'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF3D878B),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.play_arrow,
                        color: Color(0xFFD9D9D9),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Repeat with me',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(flex: 3, child: Container()),
        ],
      ),
    );
  }
}

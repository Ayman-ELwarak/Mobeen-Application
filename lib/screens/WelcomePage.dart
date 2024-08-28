// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:mobile_app/screens/HomePage.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assest/images/WelcomeBackground.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SizedBox(
            height: screenheight,
            child: Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'S',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xFFFFCB7C),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "peech",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'a',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xFFFFCB7C),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "ble",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: Image.asset('assest/images/Doctor_medhat.png'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 100.0,
                          right: 100,
                          top: 80,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Homepage();
                                },
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 2),
                                    shape: BoxShape.circle,
                                    // color: Color(0xFFFFCB7C),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 50,
                                    ),
                                  ),
                                ),
                              ),
                            )),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

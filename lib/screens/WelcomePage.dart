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
      backgroundColor: const Color(0xFF8CBBB6),
      body: Center(
        child: SizedBox(
          height: screenheight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 1,
              ),
              const Expanded(
                flex: 1,
                child: Text(
                  "I hear You",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 5,
                child: Image.asset('assest/images/stars.png'),
              ),
              GestureDetector(
                onTap: () {},
                child: Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 150.0,
                      right: 150,
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
                        child: const Center(
                            child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Go",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
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
    );
  }
}

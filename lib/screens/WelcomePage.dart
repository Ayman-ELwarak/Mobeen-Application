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
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: screenheight,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assest/images/WelcomeBackground.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Spacer(
                flex: 1,
              ),
              Row(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0, right: 16),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Homepage();
                            },
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_forward_outlined,
                        size: 50,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

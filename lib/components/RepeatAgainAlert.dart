import 'package:flutter/material.dart';

class Repeatagainalert extends StatelessWidget {
  const Repeatagainalert({super.key});

  void apper(BuildContext context) {
    final double screenheight = MediaQuery.of(context).size.height;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            height: (screenheight / 3) + 60,
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0, bottom: 10,),
                    child: Image.asset('assest/images/RepratAgain.png'),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 3.0),
                    child: Text(
                      'Repeat again !',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => apper(context),
      child: const Text('Show Alert Dialog'),
    );
  }
}

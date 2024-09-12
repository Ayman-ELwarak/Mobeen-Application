import 'package:flutter/material.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/Menu.dart';
import 'package:mobile_app/screens/Report.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String? wordsCount;
  String? familyHistory;
  String? sentenceLength;

  void resetForm() {
    setState(() {
      wordsCount = null;
      familyHistory = null;
      sentenceLength = null;
    });
  }

  void saveForm() {}

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
              image: AssetImage("assest/images/Frombackground.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: kToolbarHeight,
                child: Row(
                  children: [
                    BackButtonContainer().create(context),
                    const Spacer(),
                    const Menu(),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 8.0),
                  child: ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              'How many words does the patient say?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          ListTile(
                            title: const Text('0 - 10'),
                            leading: Radio<String>(
                              value: '0 - 10',
                              groupValue: wordsCount,
                              onChanged: (value) {
                                setState(() {
                                  wordsCount = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('11 - 20'),
                            leading: Radio<String>(
                              value: '11 - 20',
                              groupValue: wordsCount,
                              onChanged: (value) {
                                setState(() {
                                  wordsCount = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('More than 20'),
                            leading: Radio<String>(
                              value: 'More than 20',
                              groupValue: wordsCount,
                              onChanged: (value) {
                                setState(() {
                                  wordsCount = value;
                                });
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              'Are there other people in the family suffering from the same problem?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          ListTile(
                            title: const Text('Yes'),
                            leading: Radio<String>(
                              value: 'Yes',
                              groupValue: familyHistory,
                              onChanged: (value) {
                                setState(() {
                                  familyHistory = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('No'),
                            leading: Radio<String>(
                              value: 'No',
                              groupValue: familyHistory,
                              onChanged: (value) {
                                setState(() {
                                  familyHistory = value;
                                });
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              'The patient can make a sentence consisting of:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          ListTile(
                            title: const Text('Word'),
                            leading: Radio<String>(
                              value: 'Word',
                              groupValue: sentenceLength,
                              onChanged: (value) {
                                setState(() {
                                  sentenceLength = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('2 words'),
                            leading: Radio<String>(
                              value: '2 words',
                              groupValue: sentenceLength,
                              onChanged: (value) {
                                setState(() {
                                  sentenceLength = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('3 words'),
                            leading: Radio<String>(
                              value: '3 words',
                              groupValue: sentenceLength,
                              onChanged: (value) {
                                setState(() {
                                  sentenceLength = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('More than 20'),
                            leading: Radio<String>(
                              value: 'More than 20',
                              groupValue: sentenceLength,
                              onChanged: (value) {
                                setState(() {
                                  sentenceLength = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 17,
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: ElevatedButton(
                                  onPressed: resetForm,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: const BorderSide(
                                          color: Color(0xFF1E3A3D), width: 1),
                                    ),
                                  ),
                                  child: const Text(
                                    'امسح',
                                    style: TextStyle(color: Color(0xFF1E3A3D)),
                                  )),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 17,
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: ElevatedButton(
                                onPressed: () {
                                  saveForm();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return Report();
                                      },
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF5A7493),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  'تم',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

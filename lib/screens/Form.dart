import 'package:flutter/material.dart';

class Form extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
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

  void saveForm() {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 100.0,left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'How many words does the patient say?',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
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
              SizedBox(height: 14),
              Text(
                'Are there other people in the family suffering from the same problem?',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
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
              SizedBox(height: 14),
              Text(
                'The patient can make a sentence consisting of:',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
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
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 56,
                    width: 172,
                    child: ElevatedButton(
                        onPressed: resetForm,
                        child: Text('Clear',
                          style: TextStyle(
                              color: Color(0xFF1E3A3D)
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Color(0xFF1E3A3D), width: 1),
                          ),
                        )
                    ),
                  ),
                  Container(
                    height: 56,
                    width: 172,
                    child: ElevatedButton(
                        onPressed: saveForm,
                        child: Text('Go',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF8CBBB6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

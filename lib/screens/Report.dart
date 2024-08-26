import 'package:flutter/material.dart';
import '../components/Report_section.dart';


class Report extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height:393,
                child: Image.asset('assest/images/Report_avatar.jpg'),
              ),

              ReportSection(
                title: 'Assessment Summary',
                content:
                'After listening to the child\'s speech, it appears that there is a noticeable issue with their speech production.',
                highlightText: 'noticeable issue',
              ),
              ReportSection(
                title: 'Observations and Diagnosis',
                content:
                'The child exhibits difficulty in articulating certain sounds. The speech pattern suggests phonological disorder. There is also evidence of stuttering which may indicate a need for further assessment and targeted speech therapy.',
              ),
              ReportSection(
                title: 'Recommendation',
                content:
                'A comprehensive speech evaluation is recommended to determine the specific areas of difficulty and to develop an individualized therapy plan to address these concerns.',
              ),

            ],
          ),
        ),
        //backgroundColor: const Color(0xFF1E3A3D),
      ),
    );
  }
}
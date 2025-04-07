import 'package:flutter/material.dart';
import 'package:mobile_app/models/ReportModel.dart';
import '../components/Report_section.dart';

// ignore: must_be_immutable
class Report extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List<Reportmodel> Reports;
  int index;

  // ignore: non_constant_identifier_names
  Report({super.key, required this.Reports, required this.index});

  Widget build(BuildContext context) {
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: screenheight,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Reports[index].Backgrond),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Image.asset(Reports[index].image),
              Expanded(
                child: ListView(
                  children: [
                    ReportSection(
                      title: 'ملخص التقييم',
                      content: Reports[index].s1,
                    ),
                    ReportSection(
                      title: ' الاقتراحات',
                      content: Reports[index].s2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // backgroundColor: const Color(0xFF1E3A3D),
    );
  }
}

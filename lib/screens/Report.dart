import 'package:flutter/material.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/Menu.dart';
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
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            SizedBox(
              height: kToolbarHeight / 2,
              child: Container(
                color: const Color(0xFF5A7493),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.208,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assest/images/Report_avatar.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ReportSection(
                    title: 'ملخص التقييم',
                    content: Reports[index].s1,
                  ),
                  ReportSection(
                    title: 'الملاحظات والتشخيص',
                    content: Reports[index].s2,
                  ),
                  ReportSection(
                    title: ' الاقتراحات',
                    content: Reports[index].s3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // backgroundColor: const Color(0xFF1E3A3D),
    );
  }
}

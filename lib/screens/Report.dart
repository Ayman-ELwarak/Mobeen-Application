import 'package:flutter/material.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/Menu.dart';
import '../components/Report_section.dart';

class Report extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            SizedBox(
              height: kToolbarHeight,
              child: Container(
                color: const Color(0xFF5A7493),
                child: Row(
                  children: [
                    BackButtonContainer().create(context),
                    const Spacer(),
                    const Menu(),
                  ],
                ),
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
                    content:
                        'بعد الاستماع إلى كلام الطفل، يبدو أن هناك مشكلة ملحوظة في إنتاج الكلام لديه.',
                  ),
                  ReportSection(
                    title: 'الملاحظات والتشخيص',
                    content:
                        'يعاني الطفل من صعوبة في نطق بعض الأصوات. يشير نمط الكلام إلى وجود اضطراب في الأصوات. هناك أيضًا دليل على التلعثم مما قد يشير إلى الحاجة إلى مزيد من التقييم والعلاج النطقي المستهدف.',
                  ),
                  ReportSection(
                    title: ' الاقتراحات',
                    content:
                        ' يوصى بإجراء تقييم شامل للكلام لتحديد مجالات الصعوبة المحددة وتطوير خطة علاج فردية لمعالجة هذه المخاوف.',
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

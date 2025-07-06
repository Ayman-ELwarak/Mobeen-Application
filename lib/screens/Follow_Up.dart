import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/components/Backend.dart';
import 'package:mobile_app/components/GetRequest.dart';
import 'package:mobile_app/components/TextaA.dart';
import 'package:mobile_app/models/followUpModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Followupmodel> followUp = [
  Followupmodel(correct: 0, worng: 0, date: '2025-02-05T00:00:00.000Z'),
  Followupmodel(correct: 0, worng: 0, date: '2025-02-05T00:00:00.000Z'),
  Followupmodel(correct: 0, worng: 0, date: '2025-02-05T00:00:00.000Z'),
  Followupmodel(correct: 0, worng: 0, date: '2025-02-05T00:00:00.000Z'),
  Followupmodel(correct: 0, worng: 0, date: '2025-02-05T00:00:00.000Z')
];

class FollowUp extends StatefulWidget {
  const FollowUp({super.key});

  @override
  State<FollowUp> createState() => _FollowUpState();
}

class _FollowUpState extends State<FollowUp> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      print(prefs.getString('token'));
      Map<String, dynamic> response = await GetRequest(
              '$link/api/v1/users/sections', prefs.getString('token')!)
          as Map<String, dynamic>;
      print(response['data']['sections']);
      List<dynamic> data = response['data']['sections'];
      setState(() {
        for (int i = 0; i < data.length; i++) {
          followUp[i].correct = data[i]['correctAttempts'];
          followUp[i].worng = data[i]['wrongAttempts'];
          followUp[i].date = data[i]['lastTimeUsed'];
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: screenheight,
          width: screenwidth,
          color: Color(0xFF8EB3B7),
          child: Column(
            children: [
              SizedBox(height: screenheight / 18),
              SizedBox(
                child: Textaa(
                  child: Text(
                    'متابعة تقدم الطفل',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenheight / 4,
                child: Image.asset('assest/images/followUp.png'),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          width: screenwidth,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Center(
                                child: Text(
                                  'تمييز الكلمات',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              Divider(height: screenheight / 25),
                              Text(
                                'الاستخدام: ${followUp[3].correct + followUp[3].worng} مرات',
                                textAlign: TextAlign.right,
                              ),
                              Text(
                                'الأداء: ${followUp[3].correct} حالات صحيحة و ${followUp[3].worng} خطأ ',
                                textAlign: TextAlign.right,
                              ),
                              Text(
                                'آخر استخدام: ${DateFormat('yyyy-MM-dd').format(DateTime.parse(followUp[3].date).toLocal())}',
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          width: screenwidth,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Center(
                                child: Text(
                                  'ترتيب الاحداث',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              Divider(height: screenheight / 25),
                              Text(
                                'الاستخدام: ${followUp[2].correct + followUp[2].worng} مرات',
                                textAlign: TextAlign.right,
                              ),
                              Text(
                                'الأداء: ${followUp[2].correct} حالات صحيحة و ${followUp[2].worng} خطأ ',
                                textAlign: TextAlign.right,
                              ),
                              Text(
                                'آخر استخدام: ${DateFormat('yyyy-MM-dd').format(DateTime.parse(followUp[2].date).toLocal())}',
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          width: screenwidth,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Center(
                                child: Text(
                                  'بطاقات التخاطب',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              Divider(height: screenheight / 25),
                              Text(
                                'الاستخدام: ${followUp[0].correct + followUp[0].worng} مرات',
                                textAlign: TextAlign.right,
                              ),
                              Text(
                                'آخر استخدام: ${DateFormat('yyyy-MM-dd').format(DateTime.parse(followUp[0].date).toLocal())}',
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          width: screenwidth,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Center(
                                child: Text(
                                  'تمرين الفم',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              Divider(height: screenheight / 25),
                              Text(
                                'الاستخدام: ${followUp[1].correct + followUp[1].worng} مرات',
                                textAlign: TextAlign.right,
                              ),
                              Text(
                                'آخر استخدام: ${DateFormat('yyyy-MM-dd').format(DateTime.parse(followUp[1].date).toLocal())}',
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          width: screenwidth,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Center(
                                child: Text(
                                  'مخارج الحروف',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              Divider(height: screenheight / 25),
                              Text(
                                'الاستخدام: ${followUp[4].correct + followUp[4].worng} مرات',
                                textAlign: TextAlign.right,
                              ),
                              Text(
                                'آخر استخدام: ${DateFormat('yyyy-MM-dd').format(DateTime.parse(followUp[4].date).toLocal())}',
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/components/GetRequest.dart';
import 'package:mobile_app/components/sort_list.dart';
import 'package:mobile_app/screens/All_Exercises.dart';
import 'package:mobile_app/screens/CardsOfSoundLevel.dart';
import 'package:mobile_app/screens/CardsPage.dart';
import 'package:mobile_app/screens/letters.dart';
import 'package:mobile_app/screens/stories.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<dynamic> days = [
  {'points': 0, 'date': "2025-02-05T00:00:00.000Z"},
  {'points': 0, 'date': "2025-02-06T00:00:00.000Z"},
  {'points': 0, 'date': "2025-02-07T00:00:00.000Z"},
  {'points': 0, 'date': "2025-02-08T00:00:00.000Z"},
  {'points': 0, 'date': "2025-02-09T00:00:00.000Z"},
  {'points': 0, 'date': "2025-02-10T00:00:00.000Z"},
  {'points': 0, 'date': "2025-02-11T00:00:00.000Z"},
];

class RehabilitationPage extends StatefulWidget {
  @override
  _RehabilitationPageState createState() => _RehabilitationPageState();
}

class _RehabilitationPageState extends State<RehabilitationPage> {
  String getDay(String date) {
    DateTime d = DateTime.parse(date);
    String dayName = DateFormat('EEE').format(d);
    Map<String, String> daysInArabic = {
      "Sun": "الأحد",
      "Mon": "الإثنين",
      "Tue": "الثلاثاء",
      "Wed": "الأربعاء",
      "Thu": "الخميس",
      "Fri": "الجمعة",
      "Sat": "السبت"
    };
    print(daysInArabic[dayName]);
    return daysInArabic[dayName]!;
  }

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      print(prefs.getString('token'));
      Map<String, dynamic> response = await GetRequest(
          'https://speechable-api-7313b6c7ea20.herokuapp.com/api/v1/users/points/week',
          prefs.getString('token')!) as Map<String, dynamic>;
      Map<String, dynamic> data = response['data'];
      setState(() {
        days = data['week'];
        weekData['هذا الأسبوع'] = [
          FlSpot(0, days[0]['points'].toDouble()),
          FlSpot(1, days[1]['points'].toDouble()),
          FlSpot(2, days[2]['points'].toDouble()),
          FlSpot(3, days[3]['points'].toDouble()),
          FlSpot(4, days[4]['points'].toDouble()),
          FlSpot(5, days[5]['points'].toDouble()),
          FlSpot(6, days[6]['points'].toDouble()),
        ];
        print(days);
      });
    });
    super.initState();
  }

  String selectedWeek = 'هذا الأسبوع';
  Map<String, List<FlSpot>> weekData = {
    'هذا الأسبوع': [
      FlSpot(0, days[0]['points'].toDouble()),
      FlSpot(1, days[1]['points'].toDouble()),
      FlSpot(2, days[2]['points'].toDouble()),
      FlSpot(3, days[3]['points'].toDouble()),
      FlSpot(4, days[4]['points'].toDouble()),
      FlSpot(5, days[5]['points'].toDouble()),
      FlSpot(6, days[6]['points'].toDouble()),
    ],
  };

  int currentIndex = 0;

  final List<Map<String, dynamic>> items = [
    {
      'color': Color(0xFFD3F6F9),
      'text': 'بطاقات التخاطب',
      'icon': Icons.bakery_dining,
      'page': Cardspage()
    },
    {
      'color': Color(0xFFD5CCFF),
      'text': 'تمارين الفم',
      'icon': Icons.face,
      'page': AllExercises()
    },
    {
      'color': Color(0xFFFFF7DB),
      'text': 'ترتيب الاحداث',
      'icon': Icons.repeat,
      'page': Stories(
        items: sort_lists.image_sort,
        buttons: sort_lists.stories_images,
      )
    },
    {
      'color': Color(0xFFFFE7D5),
      'text': 'تمييز الكلمات',
      'icon': Icons.queue_music,
      'page': Cardsofsoundlevel()
    },
    {
      'color': Color(0xFFFBE3EC),
      'text': 'مخارج الحروف',
      'icon': Icons.blur_on_sharp,
      'page': Letters_page()
    },
  ];

  void navigateToNext() {
    setState(() {
      currentIndex = (currentIndex + 1) % items.length;
    });
  }

  void navigateToPrevious() {
    setState(() {
      currentIndex = (currentIndex - 1 + items.length) % items.length;
    });
  }

  void onButtonTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => items[currentIndex]['page'],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight / 12),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'الإنجاز هذا الأسبوع',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${weekData[selectedWeek]!.fold(0, (sum, spot) => sum + spot.y.toInt())} نقطة',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
            SizedBox(height: screenHeight / 25),
            Container(
              height: screenHeight * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              padding: EdgeInsets.only(
                top: screenHeight / 40,
                bottom: screenHeight / 90,
                left: screenWidth / 30,
                right: 4 * screenWidth / 50,
              ),
              child: LineChart(
                LineChartData(
                  minY: 0,
                  maxY: weekData['هذا الأسبوع']!
                          .map((spot) => spot.y)
                          .reduce((a, b) => a > b ? a : b) +
                      (10 -
                          (weekData['هذا الأسبوع']!
                                  .map((spot) => spot.y)
                                  .reduce((a, b) => a > b ? a : b)) %
                              10),
                  minX: 0,
                  maxX: 6,
                  gridData: FlGridData(
                    show: true,
                    drawHorizontalLine: true,
                    drawVerticalLine: false,
                    horizontalInterval: screenHeight / 60,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: Colors.grey.withOpacity(0.3),
                        strokeWidth: 1,
                      );
                    },
                  ),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: screenWidth / 10,
                        getTitlesWidget: (value, meta) {
                          if (value % 10 == 0) {
                            return Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '${value.toInt()}',
                                style:
                                    TextStyle(fontSize: 8, color: Colors.grey),
                              ),
                            );
                          }
                          return Container();
                        },
                      ),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          print(value.toInt());
                          switch (value.toInt()) {
                            case 6:
                              return Text(getDay(days[6]['date']),
                                  style: TextStyle(fontSize: 10));
                            case 5:
                              return Text(getDay(days[5]['date']),
                                  style: TextStyle(fontSize: 10));
                            case 4:
                              return Text(getDay(days[4]['date']),
                                  style: TextStyle(fontSize: 10));
                            case 3:
                              return Text(getDay(days[3]['date']),
                                  style: TextStyle(fontSize: 10));
                            case 2:
                              return Text(getDay(days[2]['date']),
                                  style: TextStyle(fontSize: 10));
                            case 1:
                              return Text(getDay(days[1]['date']),
                                  style: TextStyle(fontSize: 10));
                            case 0:
                              return Text(getDay(days[0]['date']),
                                  style: TextStyle(fontSize: 10));
                            default:
                              return SizedBox();
                          }
                        },
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: false,
                    border: Border(
                      top: BorderSide.none,
                      left: BorderSide.none,
                      bottom: BorderSide(color: Colors.grey),
                      right: BorderSide(color: Colors.grey),
                    ),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      isCurved: true,
                      spots: weekData[selectedWeek]!,
                      barWidth: 2,
                      isStrokeCapRound: true,
                      belowBarData: BarAreaData(show: false),
                      color: const Color(0xFF66C6CF),
                    ),
                  ],
                ),
              ),
            ),

            ///////////////////////////////////////////////////////////////////////
            SizedBox(height: screenHeight / 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'تنمية النطق',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: screenHeight / 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: navigateToPrevious,
                    ),
                    GestureDetector(
                      onTap: onButtonTap,
                      child: Container(
                        width: screenWidth / 1.8,
                        height: screenHeight / 5,
                        decoration: BoxDecoration(
                          color: items[currentIndex]['color'],
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 6,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              items[currentIndex]['icon'],
                              size: screenHeight / 15,
                              color: Colors.black54,
                            ),
                            SizedBox(height: screenHeight / 60),
                            Text(
                              items[currentIndex]['text'],
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: navigateToNext,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/components/sort_list.dart';
import 'package:mobile_app/screens/All_Exercises.dart';
import 'package:mobile_app/screens/CardsOfSoundLevel.dart';
import 'package:mobile_app/screens/CardsPage.dart';
import 'package:mobile_app/screens/stories.dart';

class RehabilitationPage extends StatefulWidget {
  @override
  _RehabilitationPageState createState() => _RehabilitationPageState();
}

class _RehabilitationPageState extends State<RehabilitationPage> {
  String selectedWeek = 'هذا الأسبوع'; 
  final Map<String, List<FlSpot>> weekData = {
    'هذا الأسبوع': [
      FlSpot(0, 30),
      FlSpot(1, 50),
      FlSpot(2, 70),
      FlSpot(3, 90),
      FlSpot(4, 80),
      FlSpot(5, 60),
      FlSpot(6, 40),
    ],
    'الأسبوع الماضي': [
      FlSpot(0, 20),
      FlSpot(1, 40),
      FlSpot(2, 60),
      FlSpot(3, 70),
      FlSpot(4, 50),
      FlSpot(5, 30),
      FlSpot(6, 20),
    ],
    'الأسبوع قبل الماضي': [
      FlSpot(0, 10),
      FlSpot(1, 30),
      FlSpot(2, 50),
      FlSpot(3, 80),
      FlSpot(4, 90),
      FlSpot(5, 70),
      FlSpot(6, 40),
    ],
  };

  int currentIndex = 0;

  final List<Map<String, dynamic>> items = [
    {
      'color': Color(0xFFD3F6F9), 'text': 'بطاقات التخاطب', 'icon': Icons.bakery_dining, 'page': Cardspage()},
    {'color': Color(0xFFD5CCFF), 'text': 'تمارين الفم', 'icon': Icons.face, 'page': AllExercises()},
    {'color': Color(0xFFFFF7DB), 'text': 'ترتيب الاحداث', 'icon': Icons.repeat, 'page': Stories(items: sort_lists.image_sort, buttons: sort_lists.stories_images,)},
    {'color': Color(0xFFFFE7D5), 'text': 'تمييز الكلمات', 'icon': Icons.queue_music, 'page': Cardsofsoundlevel()},
    {'color': Color(0xFFFBE3EC), 'text': 'مخارج الحروف', 'icon': Icons.blur_on_sharp, 'page': Cardsofsoundlevel()},
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

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70),
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
            SizedBox(height: 30),
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: DropdownButton<String>(
                      value: selectedWeek,
                      style: TextStyle(
                          fontSize: 12, color: const Color.fromARGB(255, 134, 133, 133)),
                      items: weekData.keys.map((week) {
                        return DropdownMenuItem(
                          value: week,
                          child: Text(week),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedWeek = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: LineChart(
                      LineChartData(
                        minY: 0,
                        maxY: 100,
                        minX: 0,
                        maxX: 6,
                        gridData: FlGridData(
                          show: true,
                          drawHorizontalLine: true,
                          drawVerticalLine: false,
                          horizontalInterval: 10,
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
                              reservedSize: 40,
                              getTitlesWidget: (value, meta) {
                                if (value % 10 == 0) {
                                  return Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '${value.toInt()}',
                                      style: TextStyle(fontSize: 8, color: Colors.grey),
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
                              reservedSize: 30,
                              getTitlesWidget: (value, meta) {
                                switch (value.toInt()) {
                                  case 6:
                                    return Text('سبت', style: TextStyle(fontSize: 10));
                                  case 5:
                                    return Text('حد', style: TextStyle(fontSize: 10));
                                  case 4:
                                    return Text('اثنين', style: TextStyle(fontSize: 10));
                                  case 3:
                                    return Text('ثلاثاء', style: TextStyle(fontSize: 10));
                                  case 2:
                                    return Text('اربعاء', style: TextStyle(fontSize: 10));
                                  case 1:
                                    return Text('خميس', style: TextStyle(fontSize: 10));
                                  case 0:
                                    return Text('جمعة', style: TextStyle(fontSize: 10));
                                  default:
                                    return Container();
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
                ],
              ),
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'تنمية النطق',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
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
                        width: 200,
                        height: 150,
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
                              size: 50,
                              color: Colors.black54,
                            ),
                            SizedBox(height: 10),
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

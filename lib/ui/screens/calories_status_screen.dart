import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CaloriesStatusScreen extends StatefulWidget {
  const CaloriesStatusScreen({super.key});

  @override
  State<CaloriesStatusScreen> createState() => _CaloriesStatusScreenState();
}

class _CaloriesStatusScreenState extends State<CaloriesStatusScreen> {
  final List<double> values = [420, 640, 350, 480, 535, 260];
  static const int highlightedIndex = 4;
  final List<String> _challengeList = [
    'assets/images/swim.png',
    'assets/images/run.jpg',
    'assets/images/yoga.webp'
  ];
  final List<String> _challengeTitle = [
    'Swim at 05:00pm',
    'Run at 08:00am',
    'Yoga at 06:00am'
  ];
  final List<Map<String, dynamic>> _challengeSubTitle = [
    {'title': 'Completed!', 'color': Colors.green},
    {'title': 'Completed!', 'color': Colors.green},
    {'title': 'Not Started!', 'color': Colors.red},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            _buildBarChartSection(),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Challenge',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      'See all',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: ListTile(
                    leading: Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(color: Colors.grey),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(_challengeList[index]),
                        ),
                      ),
                    ),
                    title: Text(
                      _challengeTitle[index],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      _challengeSubTitle[index]['title'],
                      style: TextStyle(
                          color: _challengeSubTitle[index]['color'],
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.local_fire_department, color: Colors.orange),
                        SizedBox(height: 4),
                        Text('300 Cal', style: TextStyle(fontSize: 13)),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Container _buildBarChartSection() {
    return Container(
      height: 300,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: const Text(
              "Analytics",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              "7,830 Cals",
              style: TextStyle(
                fontSize: 16,
                color: Colors.orange,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: BarChart(
              BarChartData(
                borderData: FlBorderData(show: false),
                gridData: const FlGridData(show: false),
                titlesData: const FlTitlesData(show: false),
                barGroups: _createBarGroups(),
                barTouchData: BarTouchData(
                  touchTooltipData: BarTouchTooltipData(
                    getTooltipColor: (group) => Colors.white70,
                    tooltipBorderRadius: BorderRadius.circular(10),
                    tooltipBorder: BorderSide(color: Colors.black12),
                    getTooltipItem: (group, groupIndex, rod, rodIndex) {
                      return BarTooltipItem(
                          '🔥 Burn\n${rod.toY.toStringAsFixed(0)} Calls',
                          TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center);
                    },
                  ),
                ),
                alignment: BarChartAlignment.spaceAround,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.local_fire_department, color: Colors.orange),
              SizedBox(width: 6),
              Text(
                "Burn",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(width: 4),
              Text(
                "${values[highlightedIndex]} Cals",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<BarChartGroupData> _createBarGroups() {
    return List.generate(
      values.length,
      (i) {
        final isHighlighted = i == highlightedIndex;
        return BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              toY: values[i],
              color: isHighlighted ? Colors.orangeAccent : Colors.grey.shade300,
              width: 22,
              borderRadius: BorderRadius.circular(10),
            ),
          ],
        );
      },
    );
  }
}
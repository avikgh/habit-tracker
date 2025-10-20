import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../widgets/profile_achievement_section_card.dart';
import '../widgets/profile_stats_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<double> values = [5, 4, 8, 3, 4, 2];
  static const int highlightedIndex = 4;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Column(
      children: [
        Container(
          height: size.height * 0.8,
          width: size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Positioned(
                top: 65,
                left: 20,
                child: Container(
                  height: size.height * 0.70,
                  width: size.width * 0.90,
                  decoration: BoxDecoration(
                    color: const Color(0xFFECE8E0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 60,
                        left: 60,
                        child: Column(
                          children: const [
                            Text(
                              'Avik Ghosh',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Stay consistent, not perfect.',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 150,
                        left: 9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 7, bottom: 10),
                              child: Text(
                                'Status',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                buildProfileStatsCard('12', 'Total', 'habits', Color(0xFFD8EAD6)),
                                buildProfileStatsCard('4', 'Done', 'today', Color(0xFFF7D9C9)),
                                buildProfileStatsCard('🔥', '7', 'days', Color(0xFFC7E7F3)),
                                buildProfileStatsCard('⭐', '1200', 'points', Color(0xFFDDD4F2)),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Padding(
                              padding: EdgeInsets.only(left: 7.0),
                              child: Text(
                                'Activity',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            SizedBox(
                              height: 125,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircularPercentIndicator(
                                        radius: 50,
                                        lineWidth: 10.0,
                                        percent: 0.75,
                                        center: const Text(
                                          '75%',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        progressColor: Colors.orangeAccent,
                                        backgroundColor: Colors.black12,
                                        circularStrokeCap:
                                            CircularStrokeCap.round,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'Calories burned this week',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 20),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 90,
                                        width: 150,
                                        child: BarChart(
                                          BarChartData(
                                            borderData:
                                                FlBorderData(show: false),
                                            gridData:
                                                const FlGridData(show: false),
                                            titlesData:
                                                const FlTitlesData(show: false),
                                            barGroups: _createBarGroups(),
                                            barTouchData: BarTouchData(
                                              touchTooltipData:
                                                  BarTouchTooltipData(
                                                getTooltipColor: (group) =>
                                                    Colors.white70,
                                                tooltipBorderRadius:
                                                    BorderRadius.circular(10),
                                                tooltipBorder: const BorderSide(
                                                    color: Colors.black12),
                                                getTooltipItem: (group,
                                                    groupIndex, rod, rodIndex) {
                                                  return BarTooltipItem(
                                                    '${rod.toY.toStringAsFixed(0)} Task\n✅',
                                                    const TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  );
                                                },
                                              ),
                                            ),
                                            alignment:
                                                BarChartAlignment.spaceAround,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Average completion %',
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Text(
                                'Achievements',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                buildAchievementsCard('assets/images/achievement_1.png', 'Constancy'),
                                buildAchievementsCard('assets/images/achievement_2.png', 'Early Bird'),
                                buildAchievementsCard('assets/images/achievement_3.png', 'Focus')
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 15,
                left: 145,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/avik.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
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
              color: isHighlighted ? Colors.orangeAccent : Colors.black12,
              width: 10,
              borderRadius: BorderRadius.circular(10),
            ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/date_card.dart';
import '../widgets/done_habit_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DateTime date;

  @override
  void initState() {
    date = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
                height: 110,
                width: double.maxFinite,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xFFE3F2FD),
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 20,
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '📚',
                          style: TextStyle(fontSize: 55),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 22,
                      left: 115,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Notification!',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Now is the time to read the book,\nyou can change it in settings ',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.error_outline_rounded,
                          size: 22,
                          color: Colors.black87,
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DateCard(
                      todayDate: true,
                      day: DateFormat('EEE').format(date),
                      date: DateFormat('dd').format(date)),
                  DateCard(
                      todayDate: false,
                      day:
                          DateFormat('EEE').format(date.add(Duration(days: 1))),
                      date:
                          DateFormat('dd').format(date.add(Duration(days: 1)))),
                  DateCard(
                      todayDate: false,
                      day:
                          DateFormat('EEE').format(date.add(Duration(days: 2))),
                      date:
                          DateFormat('dd').format(date.add(Duration(days: 2)))),
                  DateCard(
                      todayDate: false,
                      day:
                          DateFormat('EEE').format(date.add(Duration(days: 3))),
                      date:
                          DateFormat('dd').format(date.add(Duration(days: 3)))),
                  DateCard(
                      todayDate: false,
                      day:
                          DateFormat('EEE').format(date.add(Duration(days: 4))),
                      date:
                          DateFormat('dd').format(date.add(Duration(days: 4)))),
                  DateCard(
                      todayDate: false,
                      day:
                          DateFormat('EEE').format(date.add(Duration(days: 5))),
                      date:
                          DateFormat('dd').format(date.add(Duration(days: 5)))),
                  DateCard(
                      todayDate: false,
                      day:
                          DateFormat('EEE').format(date.add(Duration(days: 6))),
                      date:
                          DateFormat('dd').format(date.add(Duration(days: 6)))),
                  DateCard(
                      todayDate: false,
                      day:
                          DateFormat('EEE').format(date.add(Duration(days: 7))),
                      date:
                          DateFormat('dd').format(date.add(Duration(days: 7)))),
                  DateCard(
                      todayDate: false,
                      day:
                          DateFormat('EEE').format(date.add(Duration(days: 8))),
                      date:
                          DateFormat('dd').format(date.add(Duration(days: 8)))),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                DoneHabitCard(
                  title: 'Bicycle',
                  description: '07:00 for 10Km',
                  emoji: '🚴‍♀️‍',
                  color: Color(0xFFEBF5ED),
                ),
                DoneHabitCard(
                  title: 'Running',
                  description: '12:00 for 5Km',
                  emoji: '🏃‍♂️',
                  color: Color(0xFFFAEDE6),
                ),
                DoneHabitCard(
                  title: 'Work Out',
                  description: '06:00 for 1Hr',
                  emoji: '🏋️‍♂️',
                  color: Color(0xFFF8FAE6),
                ),
                DoneHabitCard(
                    title: 'Read Book',
                    description: '11:00 for 30Min',
                    emoji: '📚',
                    color: Color(0xFFF7EDF5))
              ],
            )
          ],
        ),
      ),
    );
  }
}

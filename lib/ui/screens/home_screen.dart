import 'package:flutter/material.dart';

import '../widgets/date_card.dart';
import '../widgets/done_habit_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                borderRadius: BorderRadius.circular(10)
              ),
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
                      child: Text('📚', style: TextStyle(
                        fontSize: 55
                      ),),
                    ),
                  ),
                  Positioned(
                    top: 22,
                    left: 115,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Notification!', style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),),
                        const SizedBox(height: 4),
                        Text('Now is the time to read the book,\nou can change it in settings ', style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.w400
                        ),),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 294,
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.error_outline_rounded, size: 22, color: Colors.black87,),
                    ),
                  )
                ],
              )
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DateCard(todayDate: true, day: 'Tue', date: '06'),
                  DateCard(todayDate: false, day: 'Wed', date: '07'),
                  DateCard(todayDate: false, day: 'Thu', date: '08'),
                  DateCard(todayDate: false, day: 'Fri', date: '09'),
                  DateCard(todayDate: false, day: 'Sat', date: '10'),
                  DateCard(todayDate: false, day: 'Sun', date: '11'),
                  DateCard(todayDate: false, day: 'Mon', date: '12'),
                  DateCard(todayDate: false, day: 'Tue', date: '13'),
                  DateCard(todayDate: false, day: 'Wed', date: '14'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                DoneHabitCard(title: 'Bicycle', description: '07:00 for 10Km', emoji: '🚴‍', color: Color(0xFFEBF5ED),),
                DoneHabitCard(title: 'Running', description: '12:00 for 5Km', emoji: '🏃‍♂️', color: Color(0xFFFAEDE6),),
                DoneHabitCard(title: 'Work Out', description: '06:00 for 1Hr', emoji: '🏋️‍♂️', color: Color(0xFFF8FAE6),),
                DoneHabitCard(title: 'Read Book', description: '11:00 for 30Min', emoji: '📚', color: Color(0xFFF7EDF5))
              ],
            )
          ],
        ),
      ),
    );
  }
}
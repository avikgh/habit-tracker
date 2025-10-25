import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

class EventCalenderScreen extends StatelessWidget {
  const EventCalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        leading: Row(
          children: [
            const SizedBox(width: 8),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.grid_view_outlined,
                size: 25,
                color: Colors.black,
              ),
              style: IconButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.black)),
                shadowColor: Colors.black,
              ),
            ),
          ],
        ),
        title: Text(
          'Event Calender',
          style: TextStyle(
              color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,

      ),
      body: DayView(),
    );
  }
}

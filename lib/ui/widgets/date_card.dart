import 'package:flutter/material.dart';

class DateCard extends StatelessWidget {
  const DateCard({
    super.key, required this.todayDate, required this.day, required this.date,
  });

  final bool todayDate;
  final String day;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 13.0),
      child: Container(
        height: 90,
        width: 65,
        decoration: BoxDecoration(
            color: todayDate ? Colors.orangeAccent : Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: todayDate ? Colors.transparent : Colors.black12)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(day, style: TextStyle(
                  color: todayDate ? Colors.black : Colors.black54,
                  fontSize: 13,
                  fontWeight: FontWeight.w500
              ),),
              const SizedBox(height: 10),
              Text(date, style: TextStyle(
                  color: todayDate ? Colors.black : Colors.black54,
                  fontSize: 22,
                  fontWeight: FontWeight.w600
              ),),
            ],
          ),
        ),
      ),
    );
  }
}


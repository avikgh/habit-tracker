import 'package:flutter/material.dart';

Container buildHabitCard(String title, String emoji, bool isSelected) {
  return Container(
    height: 100,
    width: 150,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: isSelected ? Colors.orangeAccent.shade100 : Colors.white70,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: isSelected ? Color(0xFFD4917F) : Colors.black12, width: 2)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          emoji,
          style: TextStyle(fontSize: 40),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}

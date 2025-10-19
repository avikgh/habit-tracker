import 'package:flutter/material.dart';

Padding buildProfileStatsCard(String value, String title, String subtitle, Color color) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 7),
    child: Container(
      height: 100,
      width: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.black87,
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
          Text(
            subtitle,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 13,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ),
  );
}

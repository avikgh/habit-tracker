import 'package:flutter/material.dart';

AppBar buildAppBar(String title) {
  return AppBar(
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
      title,
      style: TextStyle(
          color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w600),
    ),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {},
        icon:
            Icon(Icons.calendar_month_outlined, size: 25, color: Colors.black),
        style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(color: Colors.black)),
            shadowColor: Colors.black),
      ),
      const SizedBox(
        width: 8,
      )
    ],
  );
}

import 'package:flutter/material.dart';

class DoneHabitCard extends StatelessWidget {
  const DoneHabitCard({
    super.key, required this.title, required this.description, required this.color, required this.emoji,
  });

  final String title;
  final String description;
  final String emoji;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 160,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Text(emoji, style: TextStyle(
                fontSize: 50
            ),),
          ),
          Positioned(
            top: 130,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),),
                Text(description, style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),)
              ],
            ),
          ),
          Positioned(
            top: 16,
            left: 100,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.check, size: 22, color: Color(0xFFFC5B32),),
              style: IconButton.styleFrom(
                  backgroundColor: Colors.white
              ),
            ),
          )
        ],
      ),
    );
  }
}
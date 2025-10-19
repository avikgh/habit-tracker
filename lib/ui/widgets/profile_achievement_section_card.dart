import 'package:flutter/material.dart';

Padding buildAchievementsCard(String img, String title) {
  return Padding(
    padding: const EdgeInsets.all(3.5),
    child: Container(
      height: 45,
      width: 105,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover
                )
            ),
          ),
          const SizedBox(width: 3),
          Text(title, style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold
          ),)
        ],
      ),
    ),
  );
}
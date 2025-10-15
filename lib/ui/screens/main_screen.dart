import 'package:flutter/material.dart';
import 'home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            const SizedBox(width: 8),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.grid_view_outlined, size: 25, color: Colors.black87,),
              style: IconButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(color: Colors.grey)
                ),
                shadowColor: Colors.black,
              ),
            ),
          ],
        ),
        title: Text('Tuesday, 06', style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
          fontWeight: FontWeight.w500
        ),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.calendar_month_outlined, size: 25, color: Colors.black87),
            style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(color: Colors.grey)
              ),
              shadowColor: Colors.black
            ),
          ),
          const SizedBox(width: 8,)
        ],
      ),
      body: SingleChildScrollView(child: HomeScreen()),
    );
  }
}

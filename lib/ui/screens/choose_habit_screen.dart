import 'package:flutter/material.dart';
import 'package:habit_tracker/ui/screens/main_screen.dart';
import '../widgets/choose_habit_card.dart';
import '../widgets/custom_elevated_button.dart';

class ChooseHabitScreen extends StatefulWidget {
  const ChooseHabitScreen({super.key});

  @override
  State<ChooseHabitScreen> createState() => _ChooseHabitScreenState();
}

class _ChooseHabitScreenState extends State<ChooseHabitScreen> {
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  bool _isSelected4 = false;
  bool _isSelected5 = false;
  bool _isSelected6 = false;
  bool _isSelected7 = false;
  bool _isSelected8 = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              const Text(
                'Choose Habit',
                style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Choose your daily habit. You can choose more than one',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 40),
              Expanded(
                child: Wrap(
                  spacing: 30,
                  runSpacing: 30,
                  children: [
                    GestureDetector(
                      child: buildHabitCard('Work Out', '🏃‍', _isSelected1),
                      onTap: () {
                        _isSelected1 = !_isSelected1;
                        setState(() {});
                      },
                    ),
                    GestureDetector(
                      child: buildHabitCard('Eat Food', '🍔', _isSelected2),
                      onTap: () {
                        _isSelected2 = !_isSelected2;
                        setState(() {});
                      },
                    ),
                    GestureDetector(
                      child: buildHabitCard('Music', '🎤', _isSelected3),
                      onTap: () {
                        _isSelected3 = !_isSelected3;
                        setState(() {});
                      },
                    ),
                    GestureDetector(
                      child:
                          buildHabitCard('Arts and Design', '🎨', _isSelected4),
                      onTap: () {
                        _isSelected4 = !_isSelected4;
                        setState(() {});
                      },
                    ),
                    GestureDetector(
                      child: buildHabitCard('Traveling', '🗺️', _isSelected5),
                      onTap: () {
                        _isSelected5 = !_isSelected5;
                        setState(() {});
                      },
                    ),
                    GestureDetector(
                      child: buildHabitCard('Read Book', '📚', _isSelected6),
                      onTap: () {
                        _isSelected6 = !_isSelected6;
                        setState(() {});
                      },
                    ),
                    GestureDetector(
                      child: buildHabitCard('Gaming', '🎮', _isSelected7),
                      onTap: () {
                        _isSelected7 = !_isSelected7;
                        setState(() {});
                      },
                    ),
                    GestureDetector(
                      child: buildHabitCard('Mechanic', '🔧', _isSelected8),
                      onTap: () {
                        _isSelected8 = !_isSelected8;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              CustomElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MainScreen()));
                },
                buttonName: 'Get Started!',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

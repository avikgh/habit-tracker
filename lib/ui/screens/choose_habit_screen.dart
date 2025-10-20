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
  final List<Map<String, dynamic>> habits = [
    {'name': 'Work Out', 'emoji': '🏃‍'},
    {'name': 'Eat Food', 'emoji': '🍔'},
    {'name': 'Music', 'emoji': '🎤'},
    {'name': 'Arts and Design', 'emoji': '🎨'},
    {'name': 'Traveling', 'emoji': '🗺️'},
    {'name': 'Read Book', 'emoji': '📚'},
    {'name': 'Gaming', 'emoji': '🎮'},
    {'name': 'Mechanic', 'emoji': '🔧'},
  ];
  List<bool> selected = List.filled(8, false);


  @override
  Widget build(BuildContext context) {
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
                  children: List.generate(habits.length, (index) {
                    final habit = habits[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() => selected[index] = !selected[index]);
                      },
                      child: buildHabitCard(habit['name'], habit['emoji'], selected[index]),
                    );
                  }),
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

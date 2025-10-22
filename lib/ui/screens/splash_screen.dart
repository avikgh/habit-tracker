import 'package:flutter/material.dart';
import 'package:habit_tracker/ui/screens/choose_habit_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> moveToTheChooseHabitScreen() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ChooseHabitScreen()));
  }

  @override
  void initState() {
    moveToTheChooseHabitScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset('assets/images/logo.png', height: 300, width: 300, fit: BoxFit.cover,)),
    );
  }
}

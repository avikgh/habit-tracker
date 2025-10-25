import 'package:flutter/material.dart';
import 'package:habit_tracker/ui/screens/choose_habit_screen.dart';
import 'package:habit_tracker/ui/widgets/custom_elevated_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinVericationScreen extends StatefulWidget {
  const PinVericationScreen({super.key});

  @override
  State<PinVericationScreen> createState() => _PinVericationScreenState();
}

class _PinVericationScreenState extends State<PinVericationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: PinCodeTextField(
                keyboardType: TextInputType.number,
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.transparent,
                  activeColor: Colors.green,
                  selectedColor: Colors.orangeAccent
                ), appContext: context,
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: CustomElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseHabitScreen()));
                },
                buttonName: 'Verify',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

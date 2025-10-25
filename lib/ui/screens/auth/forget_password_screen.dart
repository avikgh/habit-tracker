import 'package:flutter/material.dart';
import 'package:habit_tracker/ui/screens/auth/pin_verification_screen.dart';
import 'package:habit_tracker/ui/widgets/custom_elevated_button.dart';
import 'package:habit_tracker/utilities/app_constraints.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
              child: TextFormField(
                validator: (value) {
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter an email address';
                  }
                  if (AppConstrains.emailRegExp.hasMatch(value!) == false) {
                    return 'Enter a valid email address';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(hintText: 'Email'),
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
                          builder: (context) => PinVericationScreen()));
                },
                buttonName: 'Send OTP',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

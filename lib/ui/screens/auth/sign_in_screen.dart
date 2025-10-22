import 'package:flutter/material.dart';
import 'package:habit_tracker/ui/screens/choose_habit_screen.dart';
import 'package:habit_tracker/ui/widgets/custom_elevated_button.dart';
import 'package:habit_tracker/utilities/app_constraints.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isPasswordVisible = true;
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
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                obscureText: _isPasswordVisible,
                validator: (value) {
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter a valid password';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _isPasswordVisible = !_isPasswordVisible;
                        setState(() {});
                      },
                      child: Icon(_isPasswordVisible
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined),
                    )),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: CustomElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseHabitScreen()));
                },
                buttonName: 'Sign In',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

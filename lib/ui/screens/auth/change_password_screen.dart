import 'package:flutter/material.dart';
import 'package:habit_tracker/ui/screens/auth/sign_in_screen.dart';
import 'package:habit_tracker/ui/screens/choose_habit_screen.dart';
import 'package:habit_tracker/ui/widgets/custom_elevated_button.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
                obscureText: _isPasswordVisible,
                validator: (value) {
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter a new password';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    hintText: 'New Password',
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _isPasswordVisible = !_isPasswordVisible;
                        setState(() {});
                      },
                      child: Icon(
                        _isPasswordVisible
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: _isPasswordVisible
                            ? Colors.grey
                            : Colors.orangeAccent,
                      ),
                    )),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                obscureText: _isPasswordVisible,
                validator: (value) {
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter the new password';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _isPasswordVisible = !_isPasswordVisible;
                        setState(() {});
                      },
                      child: Icon(
                        _isPasswordVisible
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: _isPasswordVisible
                            ? Colors.grey
                            : Colors.orangeAccent,
                      ),
                    )),
              ),
            ),
            const SizedBox(height: 75),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: CustomElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignInScreen()));
                },
                buttonName: 'Change Password',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

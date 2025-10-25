import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:habit_tracker/ui/screens/auth/sign_in_screen.dart';
import 'package:habit_tracker/ui/screens/choose_habit_screen.dart';
import 'package:habit_tracker/ui/widgets/custom_elevated_button.dart';
import 'package:habit_tracker/utilities/app_constraints.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                      return 'Enter your lastname';
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(hintText: 'Firstname'),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  validator: (value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Enter your lastname';
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(hintText: 'Lastname'),
                ),
              ),
              const SizedBox(height: 15),
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
                  buttonName: 'Sign Up',
                ),
              ),
              const SizedBox(height: 15),
              RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInScreen()));
                        },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

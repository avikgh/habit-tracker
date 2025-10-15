import 'package:flutter/material.dart';

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
              const Text('Choose Habit', style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w600
              ),),
              const SizedBox(height: 10),
              const Text('Choose your daily habit. You can choose more than one', style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w400
              ),),
              const SizedBox(height: 40),
              Expanded(
                child: Wrap(
                  spacing: 30,
                  runSpacing: 30,
                  children: [
                    GestureDetector(
                      child: Container(
                          height: 100,
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: _isSelected1 ? Color(0xFFF8EDE6) : Colors.white70,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: _isSelected1 ? Color(0xFFD4917F) : Colors.black12, width: 2)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('🏃‍♂️', style: TextStyle(
                                  fontSize: 40
                              ),),
                              const SizedBox(height: 5,),
                              Text('Work Out', style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          )
                      ),
                      onTap: () {
                        _isSelected1 = !_isSelected1;
                        setState(() {});
                      },
                    ),
                    GestureDetector(
                      child: Container(
                          height: 100,
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: _isSelected2 ? Color(0xFFF8EDE6) : Colors.white70,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: _isSelected2 ? Color(0xFFD4917F) : Colors.black12, width: 2)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('🍔', style: TextStyle(
                                  fontSize: 40
                              ),),
                              const SizedBox(height: 5,),
                              Text('Eat Food', style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          )
                      ),
                      onTap: () {
                        _isSelected2 = !_isSelected2;
                        setState(() {});
                      },
                    ),
                    GestureDetector(
                      child: Container(
                          height: 100,
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: _isSelected3 ? Color(0xFFF8EDE6) : Colors.white70,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: _isSelected3 ? Color(0xFFD4917F) : Colors.black12, width: 2)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('🎤', style: TextStyle(
                                  fontSize: 40
                              ),),
                              const SizedBox(height: 5,),
                              Text('Music', style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          )
                      ),
                      onTap: () {
                        _isSelected3 = !_isSelected3;
                        setState(() {});
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        height: 100,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: _isSelected4 ? Color(0xFFF8EDE6) : Colors.white70,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: _isSelected4 ? Color(0xFFD4917F) : Colors.black12, width: 2)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('🎨', style: TextStyle(
                                fontSize: 40
                            ),),
                            const SizedBox(height: 5,),
                            Text('Arts and Design', style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),),
                          ],
                        )
                      ),
                      onTap: () {
                        _isSelected4 = !_isSelected4;
                        setState(() {});
                      },
                    ),
                    GestureDetector(
                      child: Container(
                          height: 100,
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: _isSelected5 ? Color(0xFFF8EDE6) : Colors.white70,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: _isSelected5 ? Color(0xFFD4917F) : Colors.black12, width: 2)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('🗺️', style: TextStyle(
                                  fontSize: 40
                              ),),
                              const SizedBox(height: 5,),
                              Text('Traveling', style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          )
                      ),
                      onTap: () {
                        _isSelected5 = !_isSelected5;
                        setState(() {});
                      },
                    ),
                    GestureDetector(
                      child: Container(
                          height: 100,
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: _isSelected6 ? Color(0xFFF8EDE6) : Colors.white70,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: _isSelected6 ? Color(0xFFD4917F) : Colors.black12, width: 2)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('📚', style: TextStyle(
                                  fontSize: 40
                              ),),
                              const SizedBox(height: 5,),
                              Text('Read Book', style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          )
                      ),
                      onTap: () {
                        _isSelected6 = !_isSelected6;
                        setState(() {});
                      },
                    ),
                    GestureDetector(
                      child: Container(
                          height: 100,
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: _isSelected7 ? Color(0xFFF8EDE6) : Colors.white70,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: _isSelected7 ? Color(0xFFD4917F) : Colors.black12, width: 2)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('🎮', style: TextStyle(
                                  fontSize: 40
                              ),),
                              const SizedBox(height: 5,),
                              Text('Gaming', style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          )
                      ),
                      onTap: () {
                        _isSelected7 = !_isSelected7;
                        setState(() {});
                      },
                    ),
                    GestureDetector(
                      child: Container(
                          height: 100,
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: _isSelected8 ? Color(0xFFF8EDE6) : Colors.white70,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: _isSelected8 ? Color(0xFFD4917F) : Colors.black12, width: 2)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('🔧', style: TextStyle(
                                  fontSize: 40
                              ),),
                              const SizedBox(height: 5,),
                              Text('Mechanic', style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          )
                      ),
                      onTap: () {
                        _isSelected8 = !_isSelected8;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  child: const Text('Get Started!', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

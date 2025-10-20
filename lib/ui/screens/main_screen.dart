import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:habit_tracker/ui/screens/calories_status_screen.dart';
import 'package:habit_tracker/ui/screens/profile_screen.dart';
import '../widgets/custom_appbar.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _activeScreen = 0;
  final List<Widget> _screenList = const [
    HomeScreen(),
    CaloriesStatusScreen(),
    ProfileScreen(),
  ];

  final List<String> _appBarTitle = const [
    'Tuesday, 06',
    'Calories Status',
    'Profile'
  ];

  final List<IconData> _appBarAction = const [
    Icons.calendar_month_outlined,
    Icons.calendar_month_outlined,
    Icons.logout
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(_appBarTitle[_activeScreen], _appBarAction[_activeScreen]),
      body: IndexedStack(
        index: _activeScreen,
        children: _screenList,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.orangeAccent,
        height: 60,
        animationDuration: const Duration(milliseconds: 300),
        animationCurve: Curves.easeInOut,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.bar_chart, size: 30),
          Icon(Icons.account_circle, size: 30),
        ],
        onTap: (index) {
          _activeScreen = index;
          setState(() {});
        },
      ),
    );
  }
}

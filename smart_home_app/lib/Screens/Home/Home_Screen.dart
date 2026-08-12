import 'package:flutter/material.dart';
import 'package:smart_home_app/Screens/Home/widgets/Custom_Bottom_Bar.dart';
import 'package:smart_home_app/constants/Colors/App_Colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Track selected tab index
  int _currentIndex = 0;

  // List of screens for each navigation item
  final List<Widget> _pages = const [
    Center(
      child: Text(
        "Home Page",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        "Smart Devices Page",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        "Usage Analytics Page",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        "Profile Page",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_Colors.Main_2_Color,
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: CustomBottomNavBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

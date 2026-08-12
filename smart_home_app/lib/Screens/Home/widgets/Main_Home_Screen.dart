import 'package:flutter/material.dart';
import 'package:smart_home_app/Screens/Home/widgets/Custom_AppBar.dart';
import 'package:smart_home_app/Screens/Home/widgets/content_main_screen.dart';
import 'package:smart_home_app/constants/Colors/App_Colors.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_Colors.White_Color,
      body: Column(
        children: [
          // AppBar
          CustomAppbar(),
          // content
          ContentMainScreen(),
        ],
      ),
    );
  }
}

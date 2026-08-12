import 'package:flutter/material.dart';
import 'package:smart_home_app/constants/Colors/App_Colors.dart';

class ContentMainScreen extends StatelessWidget {
  const ContentMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: App_Colors.Main_2_Color),
      ),
    );
  }
}

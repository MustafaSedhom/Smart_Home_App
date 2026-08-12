// ignore_for_file: deprecated_member_use, unused_import

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_home_app/Screens/Home/Home_Screen.dart';
import 'package:smart_home_app/constants/Colors/App_Colors.dart';
import 'package:smart_home_app/constants/Images_and_Icons/Icons.dart';
import 'package:smart_home_app/constants/Images_and_Icons/Images.dart';
import 'widgets/Square_andcircle_effect.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_Colors.Main_2_Color,
      body: Stack(
        children: [
          Positioned(top: 0, left: 20, child: buildBlurCircle(size: 140)),
          Positioned(
            bottom: -40,
            right: -40,
            child: buildBlurCircle(size: 200),
          ),
          Positioned(
            top: -20,
            right: -20,
            child: buildBlurSquare(width: 140, height: 140, radius: 35),
          ),
          Positioned(
            top: 100,
            right: 30,
            child: buildBlurSquare(width: 110, height: 110, radius: 25),
          ),
          Positioned(
            top: 280,
            left: 20,
            child: buildBlurSquare(width: 200, height: 200, radius: 40),
          ),
          Positioned(top: 350, right: 80, child: buildBlurCircle(size: 24)),
          Positioned(
            bottom: 120,
            left: 40,
            child: buildBlurSquare(width: 130, height: 130, radius: 30),
          ),
          Positioned(
            bottom: -40,
            left: -10,
            child: buildBlurSquare(width: 150, height: 150, radius: 35),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome Home",
                  style: GoogleFonts.poppins(
                    color: App_Colors.Surface_2_Color,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                Gap(20),
                Text(
                  " no matter how far you go,\n home will be your destination to return to.\n let's make your home comfortable",
                  style: GoogleFonts.poppins(
                    color: App_Colors.White_Color,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Gap(30),
                Image.asset(App_Images.Start_Image),
                Gap(50),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: App_Colors.Main_1_Color,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade800,
                          blurRadius: 15,
                          spreadRadius: 2,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Get Started",
                          style: GoogleFonts.poppins(
                            color: App_Colors.White_Color,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Gap(10),
                        Image.asset(
                          App_Icons.Next_Icon,
                          color: App_Colors.White_Color,
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

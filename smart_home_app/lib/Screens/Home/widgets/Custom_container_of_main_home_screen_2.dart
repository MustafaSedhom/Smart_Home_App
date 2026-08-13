// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_home_app/constants/Colors/App_Colors.dart';
import 'package:smart_home_app/constants/Colors/effects.dart';
import 'package:smart_home_app/constants/Images_and_Icons/Icons.dart';

class CustomContainerOfMainHomeScreen2 extends StatelessWidget {
  final String title;
  final String image;
  final String name;
  final String device_name;
  final String value;
  final bool state;
  const CustomContainerOfMainHomeScreen2({
    super.key,
    required this.title,
    required this.image,
    required this.name,
    required this.value,
    required this.device_name,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 200,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: App_Colors.Main_1_Color,
        boxShadow: App_Effects.My_Shadow(),
      ),
      child: Stack(
        children: [
          Positioned(top: 0, left: 10, child: Image.asset(image, width: 75)),
          Positioned(
            top: 25,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    color: App_Colors.White_Color,
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                Text(
                  value,
                  style: GoogleFonts.poppins(
                    color: App_Colors.White_Color,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  device_name,
                  style: GoogleFonts.poppins(
                    color: App_Colors.White_Color,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Gap(10),
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    color: App_Colors.White_Color,
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            right: 10,
            child: Image.asset(
              (state) ? App_Icons.ON_Icon : App_Icons.OFF_Icon,
              width: 75,
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_home_app/constants/Colors/App_Colors.dart';
import 'package:smart_home_app/constants/Colors/effects.dart';

class CustomHomeScreenMainContainer extends StatelessWidget {
  final int temp_value;
  final String image;
  final String name;
  final int devices;
  const CustomHomeScreenMainContainer({
    super.key,
    required this.temp_value,
    required this.image,
    required this.name,
    required this.devices,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 200,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: App_Colors.Surface_2_Color,
        boxShadow: App_Effects.My_Shadow(),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              decoration: BoxDecoration(
                color: App_Colors.Main_2_Color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "${temp_value} °C",
                style: GoogleFonts.poppins(
                  color: App_Colors.White_Color,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image, width: 100, height: 100),
                Gap(10),
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    color: App_Colors.Text_Color,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.yellow,
                      ),
                      child: Text(
                        "${devices}",
                        style: GoogleFonts.poppins(
                          color: App_Colors.Text_Color,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Gap(10),
                    Text(
                      "devices",
                      style: GoogleFonts.poppins(
                        color: App_Colors.Text_Color,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

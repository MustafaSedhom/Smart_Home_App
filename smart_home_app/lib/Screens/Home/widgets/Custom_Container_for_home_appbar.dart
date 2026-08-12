// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_home_app/constants/Colors/App_Colors.dart';
import 'package:smart_home_app/constants/Images_and_Icons/Icons.dart';

class CustomContainerForHomeAppbar extends StatelessWidget {
  final String icon;
  final String value;
  final String uint;
  final String name;
  const CustomContainerForHomeAppbar({
    super.key,
    required this.icon,
    required this.value,
    required this.uint,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        color: App_Colors.White_Color.withOpacity(0.4),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: App_Colors.White_Color,
                radius: 15,
                child: Image.asset(icon, width: 25),
              ),
              // value
              Row(
                children: [
                  Text(
                    value,
                    style: GoogleFonts.poppins(
                      color: App_Colors.Text_Color,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Gap(5),
                  Text(
                    uint,
                    style: GoogleFonts.poppins(
                      color: App_Colors.Text_Color,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            name,
            style: GoogleFonts.poppins(
              color: App_Colors.Text_Color,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

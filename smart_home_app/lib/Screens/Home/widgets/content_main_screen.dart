import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_home_app/Screens/Home/widgets/Custom_Home_screen_main_container.dart';
import 'package:smart_home_app/Screens/Home/widgets/Custom_container_of_main_home_screen_2.dart';
import 'package:smart_home_app/constants/Colors/App_Colors.dart';
import 'package:smart_home_app/constants/Colors/effects.dart';
import 'package:smart_home_app/constants/Images_and_Icons/Images.dart';

class ContentMainScreen extends StatelessWidget {
  const ContentMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(color: App_Colors.Main_2_Color),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // rooms title
              Text(
                "Rooms",
                style: GoogleFonts.poppins(
                  color: App_Colors.Text_Color,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Gap(10),
              // rooms content
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomHomeScreenMainContainer(
                    temp_value: 19,
                    image: App_Images.Living_Room_Image,
                    name: 'Living Room',
                    devices: 5,
                  ),
                  CustomHomeScreenMainContainer(
                    temp_value: 12,
                    image: App_Images.Bed_Room_Image,
                    name: 'Bed Room',
                    devices: 8,
                  ),
                ],
              ),
              Gap(10),
              // active title
              Text(
                "Active",
                style: GoogleFonts.poppins(
                  color: App_Colors.Text_Color,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Gap(10),
              // active content
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomContainerOfMainHomeScreen2(
                    title: "Temperature",
                    image: App_Images.Air_Condition_Image,
                    name: 'Living Room',
                    value: '19 °C',
                    device_name: 'AC',
                    state: true,
                  ),
                  CustomContainerOfMainHomeScreen2(
                    title: "Colour",
                    image: App_Images.Lamps_Image,
                    name: 'Dining Room',
                    value: 'White',
                    device_name: 'Lamp',
                    state: false,
                  ),
                ],
              ),
              // turn off all button
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 2),
                  decoration: BoxDecoration(
                    color: App_Colors.Main_1_Color,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: App_Effects.My_Shadow(),
                  ),
                  child: Center(
                    child: Text(
                      "Tern Off All Devices",
                      style: GoogleFonts.poppins(
                        color: App_Colors.White_Color,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

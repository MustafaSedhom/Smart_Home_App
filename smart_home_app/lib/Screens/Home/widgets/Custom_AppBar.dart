import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_home_app/Screens/Home/widgets/Custom_Container_for_home_appbar.dart';
import 'package:smart_home_app/constants/Colors/App_Colors.dart';
import 'package:smart_home_app/constants/Images_and_Icons/Icons.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return // appbar
    Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2.7,
      decoration: BoxDecoration(
        color: App_Colors.Main_2_Color,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(App_Icons.Cloud_2_Icon, width: 125),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(App_Icons.Cloud_1_Icon, width: 125),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: App_Colors.White_Color,
              child: Image.asset(
                App_Icons.Notification_Icon,
                width: 30,
                color: App_Colors.Text_Color,
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Good Morning,",
                  style: GoogleFonts.poppins(
                    color: App_Colors.White_Color,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  "Kimberly Mastrangelo",
                  style: GoogleFonts.poppins(
                    color: App_Colors.Text_Color,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 15,
            left: 15,
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: App_Colors.Surface_2_Color,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(App_Icons.Sun_and_Cloud_Icon, width: 60),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "May 16, 2023 10:05 am",
                            style: GoogleFonts.poppins(
                              color: App_Colors.Text_Color,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "Cloudy",
                            style: GoogleFonts.poppins(
                              color: App_Colors.Text_Color,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Jakarta, Indonesia",
                            style: GoogleFonts.poppins(
                              color: App_Colors.Text_Color,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "19 °C",
                        style: GoogleFonts.poppins(
                          color: App_Colors.Text_Color,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: App_Colors.Main_2_Color.withOpacity(0.3),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainerForHomeAppbar(
                        icon: App_Icons.Humidity_Icon,
                        value: '97',
                        uint: '%',
                        name: 'Humidity',
                      ),
                      CustomContainerForHomeAppbar(
                        icon: App_Icons.Eye_Icon,
                        value: '7',
                        uint: 'Km',
                        name: 'Visibility',
                      ),
                      CustomContainerForHomeAppbar(
                        icon: App_Icons.Wind_Icon,
                        value: '3',
                        uint: 'Km/h',
                        name: 'NE Wind',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 5,
            child: Image.asset(App_Icons.Sun_Icon, width: 50),
          ),
        ],
      ),
    );
  }
}

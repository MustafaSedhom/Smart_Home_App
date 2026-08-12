// ignore_for_file: unused_element, deprecated_member_use

import 'package:flutter/material.dart';

Widget buildBlurSquare({
  required double width,
  required double height,
  required double radius,
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.12),
      borderRadius: BorderRadius.circular(radius),
    ),
  );
}

Widget buildBlurCircle({required double size}) {
  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.15),
      shape: BoxShape.circle,
    ),
  );
}

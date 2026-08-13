// ignore_for_file: constant_identifier_names, non_constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';

// ignore: camel_case_types
class App_Effects {
 static List<BoxShadow> My_Shadow([double raduis = 10])
  {
    return [
      BoxShadow(
        color: Colors.black.withOpacity(0.08),
        blurRadius: raduis,
        spreadRadius: 1,
        offset: const Offset(0, 5),
      ),
    ];
  }
}

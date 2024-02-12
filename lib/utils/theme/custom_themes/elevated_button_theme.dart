import 'package:flutter/material.dart';

class EElevatedButtonTheme {
  EElevatedButtonTheme._();

  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 24, 145, 125),
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      textStyle: const TextStyle(
        fontSize: 14,
        color: Color.fromARGB(255, 255, 255, 242),
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

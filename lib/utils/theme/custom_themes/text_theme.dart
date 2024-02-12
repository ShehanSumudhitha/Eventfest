import 'package:flutter/material.dart';

class ETextTheme {
  ETextTheme._();

  static TextTheme mainTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: const Color.fromARGB(255, 255, 255, 242),
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: const Color.fromARGB(255, 255, 255, 242),
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 10.0,
      fontWeight: FontWeight.w600,
      color: const Color.fromARGB(255, 255, 255, 242),
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: const Color.fromARGB(255, 255, 255, 242),
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: const Color.fromARGB(255, 255, 255, 242),
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: const Color.fromARGB(255, 255, 255, 242),
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: const Color.fromARGB(255, 255, 255, 242),
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: const Color.fromARGB(255, 255, 255, 242),
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: const Color.fromARGB(255, 255, 255, 242).withOpacity(0.5),
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: const Color.fromARGB(255, 255, 255, 242),
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: const Color.fromARGB(255, 255, 255, 242).withOpacity(0.5),
    ),
  );
}

//13:53

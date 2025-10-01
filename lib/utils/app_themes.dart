import 'package:flutter/material.dart';

class AppTheme {
  // Light Theme
  static final light = ThemeData(
    primaryColor: const Color(0xff9f4bff),
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xff9f4bff),
      primary: const Color(0xff9f4bff),
      brightness: Brightness.light,
      surface: Colors.white
    ),
    cardColor: Colors.white,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Color(0xff9f4bff),
      unselectedItemColor: Colors.grey,

    ),
  );
  // Dark Theme
  static final dark = ThemeData(
    primaryColor: const Color(0xff9f4bff),
    scaffoldBackgroundColor: const Color(0xFF121212),
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF121212),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xff9f4bff),
        primary: const Color(0xff9f4bff),
        brightness: Brightness.dark,
        surface: const Color(0xFF121212),
    ),
    cardColor: const Color(0xFF1E1E1E),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF1E1E1E),
      selectedItemColor: Color(0xff9f4bff),
      unselectedItemColor: Colors.grey,

    ),
  );
}

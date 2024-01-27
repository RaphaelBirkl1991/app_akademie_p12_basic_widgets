import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData themeData = ThemeData(
    textTheme: const TextTheme(
      headlineMedium: TextStyle(fontSize: 32),
      displayMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
      bodyMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
    ),
    primaryColor: Color(int.parse("0xFF010536")),
    hintColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(color: Colors.white),
        ),
        backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xFF010536)),
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
  );
}

import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: Colors.teal,
  colorScheme: const ColorScheme(
      background: Colors.teal,
      brightness: Brightness.light,
      primary: Colors.teal,
      onPrimary: Colors.white,
      secondary: Colors.orange,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      onBackground: Colors.black,
      surface: Colors.teal,
      onSurface: Colors.white,
  ),
  filledButtonTheme: const FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
      textStyle: MaterialStatePropertyAll<TextStyle>(
        TextStyle(
          color: Colors.white,
          fontSize: 14.0
        )
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
      // style: BorderStyle.solid,
    )
  ),
  labelStyle: TextStyle(
    color: Colors.black,
    fontSize: 14.0,
  ),
    fillColor: Colors.blueGrey,
    focusColor: Colors.teal,
    filled: false,
  )
);
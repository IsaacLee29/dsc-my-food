import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData buildThemeData() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    accentColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    textSelectionHandleColor: Colors.black,
    textSelectionColor: Colors.black12,
    cursorColor: Colors.black,
    toggleableActiveColor: Colors.black,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(primary: Colors.black87, side: BorderSide(
        color: Colors.black87.withOpacity(0.5), width: 1.5,
      ))
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      labelStyle: const TextStyle(
        color: Colors.black,
      ),
    ),
  );
}

const SystemUiOverlayStyle lightSystemUiOverlayStyle = SystemUiOverlayStyle(
  statusBarColor: Colors.white,
  systemNavigationBarColor: Colors.white,
  systemNavigationBarDividerColor: Colors.black,
  systemNavigationBarIconBrightness: Brightness.dark,
);
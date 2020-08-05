import 'package:flutter/material.dart';

enum AppTheme {
  GreenLight,
  GreenDark,
  PurpleLight,
  PurpleDark,
}

final Map<AppTheme, ThemeData> appThemeData = {
  AppTheme.GreenLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green[300],
  ),
  AppTheme.GreenDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green[800],
  ),
  AppTheme.PurpleLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.deepPurple[200],
  ),
  AppTheme.PurpleDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.deepPurple[800],
  ),
};

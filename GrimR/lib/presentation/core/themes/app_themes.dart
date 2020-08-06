import 'package:flutter/material.dart';

enum AppTheme {
  GreenLight,
  GreenDark,
  PurpleLight,
  PurpleDark,
}

final Map<AppTheme, ThemeData> appThemeData = {
  AppTheme.GreenLight: ThemeData.from(
    colorScheme: _greenScheme(Brightness.light),
  ),
  AppTheme.GreenDark: ThemeData.from(
    colorScheme: _greenScheme(Brightness.dark),
  ),
  AppTheme.PurpleLight: ThemeData.from(
    colorScheme: _purpleScheme(Brightness.light),
  ),
  AppTheme.PurpleDark: ThemeData.from(
    colorScheme: _purpleScheme(Brightness.dark),
  ),
};

/*  Flutter is moving from managing colors in ThemeData to ColorScheme
  There now exists a factory that allows you to create a ThemeData from a 
  ColoScheme.

  Interestingly, it seems like the following behaviour happens:
    - Light ColorScheme => ThemeData.primaryColor = ColorScheme.primary
    BUT
    - Dark ColorScheme => ThemeData.primaryColor = ColorScheme.surface
    Why? No idea.
 */

ColorScheme _greenScheme(Brightness brightness) {
  final primaryColor = Colors.green;
  final primaryColorDark = Colors.green[900];
  final accent = Colors.green[800];
  final accentDark = Colors.green;
  final background = Colors.white;
  final backgroundDark = Colors.grey[900];

  return schemeCreator(primaryColor, primaryColorDark, backgroundDark,
      background, accentDark, accent, brightness);
}

ColorScheme _purpleScheme(Brightness brightness) {
  final primaryColor = Colors.deepPurple[400];
  final primaryColorDark = Colors.deepPurple[900];
  final accent = Colors.deepPurple[800];
  final accentDark = Colors.grey[200];
  final background = Colors.white;
  final backgroundDark = Colors.grey[900];
  return schemeCreator(primaryColor, primaryColorDark, backgroundDark,
      background, accentDark, accent, brightness);
}

ColorScheme schemeCreator(
  Color primaryColor,
  Color primaryColorDark,
  Color backgroundDark,
  Color background,
  Color accentDark,
  Color accent,
  Brightness brightness,
) {
  final bool isDark = brightness == Brightness.dark;
  return ColorScheme(
    // Read comment above
    primary: primaryColor,
    surface: primaryColorDark,
    onPrimary: isDark ? backgroundDark : background,
    onSurface: isDark ? backgroundDark : background,
    //
    secondary: isDark ? accentDark : accent,
    onSecondary: isDark ? backgroundDark : background,
    // Not Used in the ThemeData factory
    primaryVariant: primaryColorDark,
    secondaryVariant: primaryColor,

    background: isDark ? backgroundDark : background,
    onBackground: isDark ? background : backgroundDark,
    error: Colors.red[600],
    onError: Colors.white,
    brightness: brightness,
  );
}

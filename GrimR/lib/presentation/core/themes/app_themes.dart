import 'package:flutter/material.dart';

enum AppTheme {
  GreenLight,
  GreenDark,
  PurpleLight,
  PurpleDark,
}

ThemeData mapAppTheme(AppTheme appTheme) {
  ColorScheme colorScheme;
  switch (appTheme) {
    case AppTheme.GreenLight:
      colorScheme = _greenScheme(Brightness.light);
      break;
    case AppTheme.GreenDark:
      colorScheme = _greenScheme(Brightness.dark);
      break;
    case AppTheme.PurpleLight:
      colorScheme = _purpleScheme(Brightness.light);
      break;
    case AppTheme.PurpleDark:
      colorScheme = _purpleScheme(Brightness.dark);
      break;
    default:
      colorScheme = _greenScheme(Brightness.light);
      break;
  }
  return ThemeData.from(colorScheme: colorScheme).copyWith(
    iconTheme: IconThemeData(color: colorScheme.secondary),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colorScheme.background,
      foregroundColor: colorScheme.primary,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: colorScheme.secondary,
        selectedItemColor: colorScheme.surface),
    primaryColorLight: colorScheme.primary,
    primaryColorDark: colorScheme.primary,
  );
}

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
  final primaryColor = Colors.green[600];
  final primaryColorDark = Colors.green;
  final accent = Colors.amber;
  final accentDark = Colors.amber[400];
  final primaryVariant = Colors.greenAccent[400];
  final secondaryVariant = Colors.amberAccent;
  final background = Colors.white;
  final backgroundDark = Colors.grey[900];

  return schemeCreator(
    primaryColor,
    primaryColorDark,
    backgroundDark,
    background,
    accentDark,
    accent,
    primaryVariant,
    secondaryVariant,
    brightness,
  );
}

ColorScheme _purpleScheme(Brightness brightness) {
  final primaryColor = Colors.deepPurple[400];
  final primaryColorDark = Colors.grey[200];
  final accent = Colors.deepPurple[800];
  final accentDark = Colors.deepPurple[800];
  final primaryVariant = Colors.deepPurpleAccent[200];
  final secondaryVariant = Colors.deepOrange;
  final background = Colors.white;
  final backgroundDark = Colors.grey[900];
  return schemeCreator(
    primaryColor,
    primaryColorDark,
    backgroundDark,
    background,
    accentDark,
    accent,
    primaryVariant,
    secondaryVariant,
    brightness,
  );
}

ColorScheme schemeCreator(
  Color primaryColor,
  Color primaryColorDark,
  Color backgroundDark,
  Color background,
  Color accentDark,
  Color accent,
  Color primaryVariant,
  Color secondaryVariant,
  Brightness brightness,
) {
  final bool isDark = brightness == Brightness.dark;
  final scheme = ColorScheme(
    // Read comment above
    primary: isDark ? primaryColorDark : primaryColor,
    surface: isDark ? primaryColorDark : primaryColor,
    onPrimary: isDark ? backgroundDark : background,
    onSurface: isDark ? backgroundDark : background,
    //
    secondary: isDark ? accentDark : accent,
    onSecondary: isDark ? backgroundDark : background,
    // Not Used in the ThemeData factory
    primaryVariant: primaryVariant,
    secondaryVariant: secondaryVariant,

    background: isDark ? backgroundDark : background,
    onBackground: isDark ? background : backgroundDark,
    error: Colors.red[600],
    onError: Colors.white,
    brightness: brightness,
  );
  return scheme;
}

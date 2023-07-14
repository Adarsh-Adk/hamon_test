import 'dart:math';

import 'package:flutter/material.dart';

class AppColorScheme {
  static const Color primaryColorLight = Color(0xFF7837F2);
  static const Color primaryContainerColorLight = Colors.black87;
  static const Color secondaryColorLight = Color(0xFFF1F5F6);
  static const Color backgroundColorLight = Colors.white;
  static const Color surfaceColorLight = Colors.white;
  static const Color onSurfaceColorLight = Colors.black54;
  static const Color onBackgroundColorLight = Colors.black54;
  static const Color onPrimaryColorLight = Color(0xFFFAFAFA);
  static const Color error = Colors.red;
  static Color hexToColor({required String code}) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);

int shadeValue(int value, double factor) =>
    max(0, min(value - (value * factor).round(), 255));

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1);

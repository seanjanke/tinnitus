import 'package:flutter/material.dart';

extension EasyTheme on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
  TextTheme get texts => Theme.of(this).textTheme;
  Color get bgColor => Theme.of(this).scaffoldBackgroundColor;
  double get pageWidth => MediaQuery.sizeOf(this).width;
  double get pageHeight => MediaQuery.sizeOf(this).height;
  ScaffoldMessengerState get snackbars => ScaffoldMessenger.of(this);
  BottomNavigationBarThemeData get bottomNavTheme =>
      Theme.of(this).bottomNavigationBarTheme;
}

extension EasyColor on Color {
  Color wOpacity(double opacity) => withValues(alpha: opacity);

  Color darken([double amount = 0.05]) {
    final hsl = HSLColor.fromColor(this);
    final darker = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return darker.toColor();
  }

  Color lighten([double amount = 0.05]) {
    final hsl = HSLColor.fromColor(this);
    final lighter = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
    return lighter.toColor();
  }
}

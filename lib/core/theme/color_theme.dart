import 'package:flutter/material.dart';

final primary = Colors.green.shade800;
final neutral50 = Colors.grey.shade50;
final neutral100 = Colors.grey.shade100;
final neutral300 = Colors.grey.shade300;
final neutral500 = Colors.grey.shade400;
final neutral700 = Colors.grey.shade700;

final error = Colors.red;

var colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: primary,
  onPrimary: Colors.white,
  secondary: Colors.red.shade300,
  onSecondary: Colors.white,
  error: error,
  onError: Colors.white,
  surface: neutral50,
  onSurface: Colors.black,
  surfaceContainerLowest: neutral100,
  surfaceContainerLow: neutral300,
  surfaceContainerHigh: neutral500,
  surfaceContainerHighest: neutral700,
);

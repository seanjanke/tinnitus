import 'package:flutter/material.dart';

final primary = Colors.green.shade800;
final surface = Colors.grey.shade100;
final neutralLowest = Colors.grey.shade200;
final neutralLow = Colors.grey.shade300;
final neutralHigh = Colors.grey.shade400;
final neutralHighest = Colors.grey.shade600;

final error = Colors.red;

var colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: primary,
  onPrimary: Colors.white,
  secondary: Colors.red.shade300,
  onSecondary: Colors.white,
  error: error,
  onError: Colors.white,
  surface: surface,
  onSurface: Colors.black,
  surfaceContainerLowest: neutralLowest,
  surfaceContainerLow: neutralLow,
  surfaceContainerHigh: neutralHigh,
  surfaceContainerHighest: neutralHighest,
);

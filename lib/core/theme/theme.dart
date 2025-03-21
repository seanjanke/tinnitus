import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tinnitus/core/theme/color_theme.dart';
import 'package:tinnitus/core/theme/text_theme.dart';

export 'package:tinnitus/core/theme/text_theme.dart';

var appTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  textTheme: textTheme,
  colorScheme: colorScheme,
  bottomNavigationBarTheme: bottomNavBarTheme,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
);

var bottomNavBarTheme = BottomNavigationBarThemeData(
  backgroundColor: colorScheme.surface,
  type: BottomNavigationBarType.fixed,
  showSelectedLabels: true,
  showUnselectedLabels: true,
  selectedLabelStyle: textTheme.bodySmall,
  unselectedLabelStyle: textTheme.bodySmall,
  selectedIconTheme: const IconThemeData(size: 20),
  unselectedIconTheme: const IconThemeData(size: 20),
  selectedItemColor: colorScheme.onSurface,
  unselectedItemColor: colorScheme.surfaceContainerHighest,
);

const gap4 = Gap(4);
const gap8 = Gap(8);
const gap12 = Gap(12);
const gap16 = Gap(16);
const gap20 = Gap(20);
const gap24 = Gap(24);
const gap32 = Gap(32);

var circ4 = BorderRadius.circular(4);
var circ8 = BorderRadius.circular(8);
var circ12 = BorderRadius.circular(12);
var circ16 = BorderRadius.circular(16);
var circ20 = BorderRadius.circular(20);

const padding4 = EdgeInsets.all(4);
const padding8 = EdgeInsets.all(8);
const padding12 = EdgeInsets.all(12);
const padding16 = EdgeInsets.all(16);
const padding20 = EdgeInsets.all(20);

const safeArea = EdgeInsets.all(20);
const safeAreaNoBottom = EdgeInsets.only(left: 20, right: 20, top: 20);

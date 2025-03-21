import 'package:flutter/material.dart';
import 'package:tinnitus/app.dart';
import 'package:tinnitus/core/localization/locales.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterLocalization.instance.ensureInitialized();
  runApp(const TinnitusApp());
}

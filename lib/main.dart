import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinnitus/app.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/data/controllers/recommendations_controller.dart';
import 'package:tinnitus/data/controllers/user_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterLocalization.instance.ensureInitialized();
  final recomController = Get.put(RecommendationsController());
  final userController = Get.put(UserController());
  await recomController.initilize();
  await userController.initilize();
  runApp(const TinnitusApp());
}

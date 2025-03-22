import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/navigation/router.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/data/controllers/user_controller.dart';

class TinnitusApp extends StatefulWidget {
  const TinnitusApp({super.key});

  @override
  State<TinnitusApp> createState() => _TinnitusAppState();
}

class _TinnitusAppState extends State<TinnitusApp> {
  FlutterLocalization localization = FlutterLocalization.instance;
  final userController = Get.find<UserController>();

  void configureLocalization() {
    localization
      ..init(mapLocales: locales, initLanguageCode: 'en')
      ..onTranslatedLanguage = onTranslatedLanguage;
  }

  void onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    configureLocalization();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router(
          hasCompletedOnboarding: userController.hasCompletedOnboarding.value,
        ),
        themeMode: ThemeMode.light,
        theme: appTheme,
        supportedLocales: localization.supportedLocales,
        localizationsDelegates: localization.localizationsDelegates,
      ),
    );
  }
}

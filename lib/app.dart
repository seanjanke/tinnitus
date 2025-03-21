import 'package:flutter/material.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/navigation/router.dart';
import 'package:tinnitus/core/theme/theme.dart';

class TinnitusApp extends StatefulWidget {
  const TinnitusApp({super.key});

  @override
  State<TinnitusApp> createState() => _TinnitusAppState();
}

class _TinnitusAppState extends State<TinnitusApp> {
  FlutterLocalization localization = FlutterLocalization.instance;

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
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      themeMode: ThemeMode.light,
      theme: appTheme,
      supportedLocales: localization.supportedLocales,
      localizationsDelegates: localization.localizationsDelegates,
    );
  }
}

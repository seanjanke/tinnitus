import 'package:flutter/material.dart';
import 'package:tinnitus/core/navigation/router.dart';
import 'package:tinnitus/core/theme/theme.dart';

class TinnitusApp extends StatelessWidget {
  const TinnitusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: appTheme,
    );
  }
}

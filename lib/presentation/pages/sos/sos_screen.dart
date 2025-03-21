import 'package:flutter/material.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/navigation/routes.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/presentation/widgets/appbar.dart';

class SOSScreen extends StatelessWidget {
  const SOSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(onTap: context.pop, title: LocaleData.sos),
      body: SafeArea(minimum: safeArea, child: Column(children: [])),
    );
  }
}

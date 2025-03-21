import 'package:flutter/material.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/navigation/routes.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';

class ProfileScren extends StatelessWidget {
  const ProfileScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: safeArea,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    LocaleData.profile.getString(context),
                    style: context.texts.headlineMedium,
                  ),
                ),
                gap12,
                IconButton(
                  onPressed: () => context.push(Routes.settings),
                  icon: Icon(Icons.settings_rounded),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

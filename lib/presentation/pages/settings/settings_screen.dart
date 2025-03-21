import 'package:flutter/material.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/navigation/routes.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/presentation/pages/settings/components/settings_list_tile.dart';
import 'package:tinnitus/presentation/widgets/appbar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(onTap: context.pop, title: LocaleData.settings),
      body: SafeArea(
        minimum: safeArea,
        child: Column(
          children: [
            SettingsListTile(
              title: LocaleData.language.getString(context),
              onTap: () => context.push(Routes.language),
            ),
            SettingsListTile(
              title: LocaleData.sosPosition.getString(context),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

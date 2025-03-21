import 'package:flutter/material.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/navigation/routes.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/presentation/pages/settings/components/language_list_tile.dart';
import 'package:tinnitus/presentation/widgets/appbar.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  FlutterLocalization localization = FlutterLocalization.instance;
  String currentLocale = '';

  void setLocale(String? newLocale) {
    if (newLocale == null) return;
    if (newLocale == 'en') {
      localization.translate('en');
    } else if (newLocale == 'de') {
      localization.translate('de');
    }

    setState(() {
      currentLocale = newLocale;
    });
  }

  @override
  void initState() {
    super.initState();
    currentLocale = localization.currentLocale!.languageCode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(onTap: context.pop, title: LocaleData.language),
      body: SafeArea(
        minimum: safeArea,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LanguageListTile(
              flag: '🇩🇪',
              title: LocaleData.german.getString(context),
              onTap: () => setLocale('de'),
              isActive: currentLocale == 'de',
            ),
            LanguageListTile(
              flag: '🇬🇧',
              title: LocaleData.english.getString(context),
              onTap: () => setLocale('en'),
              isActive: currentLocale == 'en',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/presentation/widgets/appbar.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(onTap: context.pop, title: LocaleData.filter),
      body: SafeArea(
        minimum: safeArea,
        child: Column(children: [Text('More filter will come here')]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';

class LanguageListTile extends StatelessWidget {
  final String flag;
  final String title;
  final VoidCallback onTap;
  final bool isActive;

  const LanguageListTile({
    required this.flag,
    required this.title,
    required this.onTap,
    required this.isActive,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: padding12,
        decoration: BoxDecoration(
          color:
              isActive
                  ? context.colors.primary.wOpacity(0.3)
                  : context.colors.surface,
          borderRadius: circ12,
          border: Border.all(
            color: isActive ? context.colors.primary : context.colors.surface,
            width: 2.5,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(flag, style: context.texts.headlineLarge),
                  gap12,
                  Text(title, style: context.texts.bodyLarge),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

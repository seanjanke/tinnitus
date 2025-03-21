import 'package:flutter/material.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';

class SettingsListTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const SettingsListTile({required this.title, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding12,
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: context.colors.surface,
          borderRadius: circ12,
        ),
        child: Row(
          children: [
            Expanded(child: Text(title, style: context.texts.bodyLarge)),
            gap12,
            Icon(
              Icons.chevron_right_rounded,
              color: context.colors.surfaceContainerHigh,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color? bgColor;
  final Color? fgColor;
  const Button({
    required this.title,
    required this.onTap,
    this.bgColor,
    this.fgColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: BoxDecoration(
          color: context.colors.primary,
          borderRadius: circ60,
        ),
        child: Center(
          child: Text(
            title,
            style: context.texts.labelMedium!.copyWith(
              color: context.colors.onPrimary,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

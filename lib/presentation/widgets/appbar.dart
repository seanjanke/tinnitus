import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onTap;
  final String title;
  final bool? titleIsLocalized;
  final List<Widget>? actions;

  const Appbar({
    required this.onTap,
    required this.title,
    this.titleIsLocalized,
    this.actions,
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppBar(
          backgroundColor: context.bgColor,
          leading: IconButton(
            onPressed: onTap,
            style: const ButtonStyle(splashFactory: NoSplash.splashFactory),
            icon: const FaIcon(FontAwesomeIcons.arrowLeft, size: 22),
          ),
          title: Text(
            titleIsLocalized ?? true ? title.getString(context) : title,
            style: context.texts.labelLarge,
          ),
          actions: actions,
        ),
        Divider(height: 0, thickness: 1.5, color: context.colors.surface),
      ],
    );
  }
}

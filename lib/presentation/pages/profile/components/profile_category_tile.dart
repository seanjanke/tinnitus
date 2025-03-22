import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';

class ProfileCategoryTile extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color iconColor;

  const ProfileCategoryTile({
    required this.title,
    required this.description,
    required this.icon,
    required this.iconColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: padding16,
      decoration: BoxDecoration(
        borderRadius: circ24,
        color: context.colors.surface,
      ),
      child: Row(
        children: [
          FaIcon(icon, size: 24, color: iconColor),
          gap20,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: context.texts.labelSmall),
                Text(
                  description,
                  style: context.texts.bodyMedium!.copyWith(
                    color: context.colors.surfaceContainerHigh,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

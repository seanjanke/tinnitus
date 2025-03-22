import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/data/models/recom.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';

class RecommendationTile extends StatelessWidget {
  final Recommendation recommendation;
  const RecommendationTile({required this.recommendation, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: padding12,
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: circ16,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 48,
            height: 48,
            child: HugeIcon(
              icon: recommendation.icon,
              color: context.colors.onSurface,
              size: 32,
            ),
          ),
          gap16,
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recommendation.title.getString(context),
                  style: context.texts.labelMedium,
                ),
                gap4,
                Text(
                  recommendation.description.getString(context),
                  style: context.texts.bodyMedium!.copyWith(
                    color: context.colors.surfaceContainerHigh,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

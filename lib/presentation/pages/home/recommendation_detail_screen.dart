import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/navigation/routes.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/data/models/recom.dart';
import 'package:tinnitus/presentation/pages/home/rating_screen.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';
import 'package:tinnitus/presentation/widgets/button.dart';

class RecommendationDetailScreen extends StatelessWidget {
  final Recommendation recom;
  const RecommendationDetailScreen({required this.recom, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: context.pageHeight * 0.35,
                color: recom.iconColor.wOpacity(0.3),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: kToolbarHeight),
                    child: FaIcon(recom.icon, size: 60, color: recom.iconColor),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: SafeArea(
                  minimum: safeArea,
                  child: GestureDetector(
                    onTap: context.pop,
                    child: Container(
                      padding: padding8,
                      decoration: BoxDecoration(
                        color: context.colors.surface,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.arrowLeft,
                          color: context.colors.surfaceContainerHighest,
                          size: 22,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              // Wrap the column inside a SingleChildScrollView
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    gap16,
                    Text(
                      recom.title.getString(context),
                      style: context.texts.headlineSmall,
                    ),
                    gap12,
                    Text(
                      recom.description.getString(context),
                      style: context.texts.bodyMedium!.copyWith(
                        color: context.colors.surfaceContainerHighest,
                      ),
                    ),
                    gap8,
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              top: false,
              child: Button(
                title: LocaleData.completed.getString(context),
                bgColor: context.colors.onSurface,
                onTap:
                    () async => showModalBottomSheet(
                      context: context,
                      builder: (_) => RatingScreen(recom: recom),
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:get/get.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/navigation/routes.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/data/controllers/user_controller.dart';
import 'package:tinnitus/data/models/recom.dart';
import 'package:tinnitus/presentation/pages/profile/components/profile_category_tile.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Get.find<UserController>();

    return Scaffold(
      body: SafeArea(
        minimum: safeArea,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    LocaleData.yourProfile.getString(context),
                    style: context.texts.headlineSmall,
                  ),
                ),
                gap12,
                GestureDetector(
                  onTap: () => context.push(Routes.settings),
                  child: Container(
                    padding: padding8,
                    decoration: BoxDecoration(
                      color: context.colors.surface,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.gear,
                        color: context.colors.surfaceContainerHighest,
                        size: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            gap24,
            Container(
              width: double.infinity,
              padding: padding16,
              decoration: BoxDecoration(
                color: context.colors.surface,
                borderRadius: circ24,
              ),
              child: Column(
                children: [
                  Text(
                    LocaleData.severityLevel.getString(context),
                    style: context.texts.labelMedium,
                  ),
                  gap20,
                  AnimatedRadialGauge(
                    duration: const Duration(milliseconds: 300),
                    radius: 120,
                    value:
                        userController.userSeverity.value.level.level
                            .toDouble(),
                    axis: GaugeAxis(
                      min: 0,
                      max: 4,
                      style: GaugeAxisStyle(
                        segmentSpacing: 6,
                        cornerRadius: Radius.circular(20),
                      ),
                      segments: [
                        GaugeSegment(
                          from: 0,
                          to: 1,
                          color: iconColors[3].wOpacity(0.2),
                        ),
                        GaugeSegment(
                          from: 1,
                          to: 2,
                          color: iconColors[3].wOpacity(0.2),
                        ),
                        GaugeSegment(
                          from: 2,
                          to: 3,
                          color: iconColors[3].wOpacity(0.2),
                        ),
                        GaugeSegment(
                          from: 3,
                          to: 4,
                          color: iconColors[3].wOpacity(0.2),
                        ),
                      ],
                      progressBar: GaugeBasicProgressBar(
                        gradient: GaugeAxisGradient(
                          colors: [iconColors[3], iconColors[3].wOpacity(0.4)],
                        ),
                      ),
                    ),
                    builder: (context, child, value) {
                      return Center(
                        child: Text(
                          userController.userSeverity.value.level.displayName,
                          style: context.texts.displayLarge!.copyWith(
                            fontSize: 48,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                  ),
                  gap24,
                  Text(
                    userController.userSeverity.value.level.description
                        .getString(context),
                    style: context.texts.bodySmall!.copyWith(
                      color: context.colors.surfaceContainerHigh,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  gap16,
                  InkWell(
                    onTap: () => context.push(Routes.onboarding, extra: false),
                    child: Text(
                      LocaleData.testAgain.getString(context),
                      style: context.texts.labelSmall,
                    ),
                  ),
                ],
              ),
            ),
            gap24,
            ProfileCategoryTile(
              icon: FontAwesomeIcons.solidIdCard,
              iconColor: iconColors[0],
              title: LocaleData.personalInformation.getString(context),
              description: LocaleData.personalInformationDescription.getString(
                context,
              ),
            ),
            ProfileCategoryTile(
              icon: FontAwesomeIcons.solidThumbsUp,
              iconColor: iconColors[1],
              title: LocaleData.preferences.getString(context),
              description: LocaleData.preferencesDescription.getString(context),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/navigation/routes.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/data/controllers/recommendations_controller.dart';
import 'package:tinnitus/presentation/pages/profile/components/severity_answer_list_tile.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final recommendationsController = Get.find<RecommendationsController>();
    final questionKeys = [
      LocaleData.question1,
      LocaleData.question2,
      LocaleData.question3,
      LocaleData.question4,
      LocaleData.question5,
      LocaleData.question6,
      LocaleData.question7,
      LocaleData.question8,
      LocaleData.question9,
      LocaleData.question10,
      LocaleData.question11,
      LocaleData.question12,
    ];

    return Scaffold(
      body: SafeArea(
        minimum: safeArea,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    LocaleData.profile.getString(context),
                    style: context.texts.headlineMedium,
                  ),
                ),
                gap12,
                IconButton(
                  onPressed: () => context.push(Routes.settings),
                  icon: Icon(Icons.settings_rounded),
                ),
              ],
            ),
            gap24,
            Expanded(
              child: Obx(() {
                final userSeverity =
                    recommendationsController.userSeverity.value;

                return ListView.builder(
                  itemCount: userSeverity.answers.length,
                  itemBuilder: (context, index) {
                    final answer = userSeverity.answers[index];
                    final questionText = questionKeys[index].getString(context);

                    return SeverityAnswerListTile(
                      answer: answer,
                      questionText: questionText,
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

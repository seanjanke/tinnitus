import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/data/controllers/recommendations_controller.dart';
import 'package:tinnitus/data/models/severity.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';
import 'package:tinnitus/presentation/widgets/button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final recommendationsController = Get.find<RecommendationsController>();
  final PageController pageController = PageController();

  int currentQuestionIndex = 0;
  Severity severity = Severity.initial(12);
  final List<double> sliderValues = List.filled(12, 0.5);

  final List<String> questionKeys = [
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

  void saveAnswer(double value) {
    setState(() {
      sliderValues[currentQuestionIndex] = value;
      severity.answers[currentQuestionIndex] =
          AnswerValue.values[(value * (AnswerValue.values.length - 1)).round()];
    });
  }

  void nextQuestion() {
    if (currentQuestionIndex < questionKeys.length - 1) {
      setState(() => currentQuestionIndex++);
      pageController.animateToPage(
        currentQuestionIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      finishQuiz();
    }
  }

  Future<void> finishQuiz() async {
    await recommendationsController.saveSeverity(severity);
    await recommendationsController.setShowOnboarding();
  }

  void previousQuestion() {
    if (currentQuestionIndex > 0) {
      setState(() => currentQuestionIndex--);
      pageController.animateToPage(
        currentQuestionIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: safeArea,
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: previousQuestion,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: context.colors.surfaceContainerLowest,
                      borderRadius: circ16,
                    ),
                    child: Text(
                      LocaleData.back.getString(context),
                      style: context.texts.labelSmall,
                    ),
                  ),
                ),
                gap24,
                Expanded(
                  child: LinearProgressIndicator(
                    borderRadius: circ12,
                    minHeight: 14,
                    value: (currentQuestionIndex + 1) / questionKeys.length,
                    backgroundColor: context.colors.surfaceContainerLow,
                    valueColor: AlwaysStoppedAnimation(context.colors.primary),
                  ),
                ),
                gap24,
                GestureDetector(
                  onTap: finishQuiz,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: context.colors.surfaceContainerLowest,
                      borderRadius: circ16,
                    ),
                    child: Text(
                      LocaleData.skip.getString(context),
                      style: context.texts.labelSmall,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: questionKeys.length,
                itemBuilder: (context, index) {
                  return buildQuestionPage(
                    questionKeys[index],
                    sliderValues[index],
                  );
                },
              ),
            ),
            Button(
              title: LocaleData.next.getString(context),
              onTap: nextQuestion,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildQuestionPage(String questionKey, double currentValue) {
    return Padding(
      padding: safeArea,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            questionKey.getString(context),
            style: context.texts.labelLarge,
            textAlign: TextAlign.center,
          ),
          gap32,
          buildAnswerSlider(currentValue),
        ],
      ),
    );
  }

  String getSliderValueLabel(double value) {
    if (value <= 0.33) return LocaleData.scalarlow.getString(context);
    if (value <= 0.67) return LocaleData.scalarmid.getString(context);
    return LocaleData.scalarhigh.getString(context);
  }

  Widget buildAnswerSlider(double currentValue) {
    return Column(
      children: [
        Slider(
          value: currentValue,
          min: 0.0,
          max: 1.0,
          divisions: 2,
          label: getSliderValueLabel(currentValue),
          onChanged: saveAnswer,
        ),
        gap24,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildScaleLabel(
              LocaleData.scalarlow.getString(context),
              currentValue <= 0.33,
            ),
            buildScaleLabel(
              LocaleData.scalarmid.getString(context),
              0.33 < currentValue && currentValue <= 0.67,
            ),
            buildScaleLabel(
              LocaleData.scalarhigh.getString(context),
              currentValue > 0.67,
            ),
          ],
        ),
      ],
    );
  }

  Widget buildScaleLabel(String text, bool isBold) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}

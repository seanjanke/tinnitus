import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/data/controllers/user_controller.dart';
import 'package:tinnitus/data/models/severity.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';
import 'package:tinnitus/presentation/widgets/button.dart';

class OnboardingScreen extends StatefulWidget {
  final bool isInitialOnboarding;
  const OnboardingScreen({required this.isInitialOnboarding, super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final userController = Get.find<UserController>();
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

  SeverityLevel get getSeverityLevel {
    final sum = severity.answers
        .map(
          (answer) =>
              answer == AnswerValue.trueValue
                  ? 2
                  : answer == AnswerValue.partiallyTrue
                  ? 1
                  : 0,
        )
        .reduce((a, b) => a + b);

    if (sum <= 8) return SeverityLevel.one;
    if (sum <= 12) return SeverityLevel.two;
    if (sum <= 18) return SeverityLevel.three;
    return SeverityLevel.four;
  }

  void saveAnswer(double value) {
    setState(() {
      sliderValues[currentQuestionIndex] = value;

      severity.answers[currentQuestionIndex] =
          value == 0.0
              ? AnswerValue.notTrue
              : value == 0.5
              ? AnswerValue.partiallyTrue
              : AnswerValue.trueValue;
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

  Future<void> skip() async {
    await userController.setShowOnboarding();
  }

  Future<void> finishQuiz() async {
    final finalSeverity = Severity(
      id: 0,
      answers: severity.answers,
      level: getSeverityLevel,
    );

    await userController.saveSeverity(
      severity: finalSeverity,
      isInitialOnboarding: widget.isInitialOnboarding,
      context: context,
    );
    await userController.setShowOnboarding();
  }

  void previousQuestion() {
    if (currentQuestionIndex == 0 && !widget.isInitialOnboarding) {
      context.pop();
    } else if (currentQuestionIndex > 0) {
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
                      style: context.texts.labelSmall!.copyWith(fontSize: 14),
                    ),
                  ),
                ),
                gap20,
                Expanded(
                  child: LinearProgressIndicator(
                    borderRadius: circ12,
                    minHeight: 14,
                    value: (currentQuestionIndex + 1) / questionKeys.length,
                    backgroundColor: context.colors.surface,
                    valueColor: AlwaysStoppedAnimation(context.colors.primary),
                  ),
                ),
                gap20,
                GestureDetector(
                  onTap: skip,
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
                      style: context.texts.labelSmall!.copyWith(fontSize: 14),
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
              bgColor: context.colors.onSurface,
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
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 10,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 20),
            inactiveTrackColor: context.colors.surfaceContainerLow,
          ),
          child: Slider(
            value: currentValue,
            min: 0.0,
            max: 1.0,
            divisions: 2,
            padding: EdgeInsets.zero,
            label: getSliderValueLabel(currentValue),
            onChanged: saveAnswer,
          ),
        ),
        gap24,
        Row(
          children: [
            Expanded(
              child: Text(
                LocaleData.scalarlow.getString(context),
                style: TextStyle(
                  fontWeight:
                      currentValue <= 0.33
                          ? FontWeight.bold
                          : FontWeight.normal,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  LocaleData.scalarmid.getString(context),
                  style: TextStyle(
                    fontWeight:
                        0.33 < currentValue && currentValue <= 0.67
                            ? FontWeight.bold
                            : FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Text(
                LocaleData.scalarhigh.getString(context),
                style: TextStyle(
                  fontWeight:
                      currentValue > 0.67 ? FontWeight.bold : FontWeight.normal,
                ),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

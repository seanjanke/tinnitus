import 'package:flutter/material.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';
import 'package:tinnitus/presentation/widgets/button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentQuestionIndex = 0;
  final List<double> answers = List.filled(12, 0.5);
  final PageController pageController = PageController();

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
      answers[currentQuestionIndex] = value;
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

  void finishQuiz() {
    print('Quiz completed! Answers: $answers');

    // Here you would typically navigate to the next screen or save data
    // Navigator.of(context).pushReplacement(
    //   MaterialPageRoute(builder: (context) => HomeScreen(quizResults: _answers)),
    // );
  }

  String getSliderValueLabel(double value) {
    if (value <= 0.33) {
      return LocaleData.scalarlow.getString(context);
    } else if (value <= 0.67) {
      return LocaleData.scalarmid.getString(context);
    } else {
      return LocaleData.scalarhigh.getString(context);
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
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
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
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
                    valueColor: AlwaysStoppedAnimation<Color>(
                      context.colors.primary,
                    ),
                  ),
                ),
                gap24,
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
                      LocaleData.skip.getString(context),
                      style: context.texts.labelSmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  setState(() => currentQuestionIndex = index);
                },
                itemCount: questionKeys.length,
                itemBuilder: (context, index) {
                  return buildQuestionPage(questionKeys[index], answers[index]);
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
          gap32,
          gap32,
          buildAnswerSlider(currentValue),
        ],
      ),
    );
  }

  Widget buildAnswerSlider(double currentValue) {
    return Column(
      children: [
        Slider(
          value: currentValue,
          min: 0.0,
          max: 1.0,
          divisions: 2,
          padding: EdgeInsets.zero,
          label: getSliderValueLabel(currentValue),
          onChanged: saveAnswer,
        ),
        gap24,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleData.scalarlow.getString(context),
              style: TextStyle(
                fontWeight:
                    currentValue <= 0.33 ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            Text(
              LocaleData.scalarmid.getString(context),
              style: TextStyle(
                fontWeight:
                    currentValue > 0.33 && currentValue <= 0.67
                        ? FontWeight.bold
                        : FontWeight.normal,
              ),
            ),
            Text(
              LocaleData.scalarhigh.getString(context),
              style: TextStyle(
                fontWeight:
                    currentValue > 0.67 ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

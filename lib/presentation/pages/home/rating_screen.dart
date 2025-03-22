import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/navigation/routes.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/data/controllers/recommendations_controller.dart';
import 'package:tinnitus/data/models/recom.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';
import 'package:tinnitus/presentation/widgets/button.dart';

class RatingScreen extends StatefulWidget {
  final Recommendation recom;
  const RatingScreen({required this.recom, super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  final recommendationsController = Get.find<RecommendationsController>();
  int selectedValue = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.bgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SafeArea(
        minimum: safeArea,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: context.pop,
                  child: Container(
                    padding: padding8,
                    decoration: BoxDecoration(
                      color: context.colors.surface,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.xmark,
                        color: context.colors.surfaceContainerHighest,
                        size: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            gap16,
            Spacer(),
            Center(
              child: Text(
                '${LocaleData.howEffectiveWas.getString(context)} ${widget.recom.title.getString(context)} ${LocaleData.forYouQuestion.getString(context)}',
                style: context.texts.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ),
            gap32,
            // SliderTheme(
            //   data: SliderTheme.of(context).copyWith(
            //     trackHeight: 10,
            //     thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12),
            //     overlayShape: const RoundSliderOverlayShape(overlayRadius: 20),
            //     inactiveTrackColor: context.colors.surfaceContainerLow,
            //   ),
            //   child: Slider(
            //     min: 0,
            //     max: 5,
            //     value: selectedValue.toDouble(),
            //     onChanged: (newVal) {
            //       setState(() => selectedValue = newVal.toInt());
            //     },
            //   ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => setState(() => selectedValue = 1),
                  child: Container(
                    padding: padding8,
                    decoration: BoxDecoration(
                      color:
                          selectedValue == 1
                              ? context.colors.primary.wOpacity(0.2)
                              : context.colors.surface,
                      shape: BoxShape.circle,
                    ),
                    child: FaIcon(
                      selectedValue == 1
                          ? FontAwesomeIcons.solidFaceSadCry
                          : FontAwesomeIcons.faceSadCry,
                      size: 40,
                      color:
                          selectedValue == 1
                              ? context.colors.primary
                              : context.colors.surfaceContainerHigh,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() => selectedValue = 2),
                  child: Container(
                    padding: padding8,
                    decoration: BoxDecoration(
                      color:
                          selectedValue == 2
                              ? context.colors.primary.wOpacity(0.2)
                              : context.colors.surface,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: FaIcon(
                        selectedValue == 2
                            ? FontAwesomeIcons.solidFaceTired
                            : FontAwesomeIcons.faceTired,
                        size: 40,
                        color:
                            selectedValue == 2
                                ? context.colors.primary
                                : context.colors.surfaceContainerHigh,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() => selectedValue = 3),
                  child: Container(
                    padding: padding8,
                    decoration: BoxDecoration(
                      color:
                          selectedValue == 3
                              ? context.colors.primary.wOpacity(0.2)
                              : context.colors.surface,
                      shape: BoxShape.circle,
                    ),
                    child: FaIcon(
                      selectedValue == 3
                          ? FontAwesomeIcons.solidFaceMeh
                          : FontAwesomeIcons.faceMeh,
                      size: 40,
                      color:
                          selectedValue == 3
                              ? context.colors.primary
                              : context.colors.surfaceContainerHigh,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() => selectedValue = 4),
                  child: Container(
                    padding: padding8,
                    decoration: BoxDecoration(
                      color:
                          selectedValue == 4
                              ? context.colors.primary.wOpacity(0.2)
                              : context.colors.surface,
                      shape: BoxShape.circle,
                    ),
                    child: FaIcon(
                      selectedValue == 4
                          ? FontAwesomeIcons.solidFaceSmileBeam
                          : FontAwesomeIcons.faceSmileBeam,
                      size: 40,
                      color:
                          selectedValue == 4
                              ? context.colors.primary
                              : context.colors.surfaceContainerHigh,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() => selectedValue = 5),
                  child: Container(
                    padding: padding8,
                    decoration: BoxDecoration(
                      color:
                          selectedValue == 5
                              ? context.colors.primary.wOpacity(0.2)
                              : context.colors.surface,
                      shape: BoxShape.circle,
                    ),
                    child: FaIcon(
                      selectedValue == 5
                          ? FontAwesomeIcons.solidFaceLaughSquint
                          : FontAwesomeIcons.faceLaughSquint,
                      size: 40,
                      color:
                          selectedValue == 5
                              ? context.colors.primary
                              : context.colors.surfaceContainerHigh,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            gap24,
            Button(
              bgColor: context.colors.onSurface,
              title: LocaleData.save.getString(context),
              onTap: () async {
                await recommendationsController.rateRecommendation(
                  recommendation: widget.recom,
                  rating: selectedValue,
                );
                if (context.mounted) {
                  context.pop();
                  context.pop();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

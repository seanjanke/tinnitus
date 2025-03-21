import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/navigation/routes.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/data/controllers/recommendations_controller.dart';
import 'package:tinnitus/data/models/recom_category.dart';
import 'package:tinnitus/presentation/pages/home/components/recommendation_tile.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final searchInputController = TextEditingController();
  final recommendationsController = Get.find<RecommendationsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: safeAreaNoBottom,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    LocaleData.treatments.getString(context),
                    style: context.texts.headlineMedium,
                  ),
                ),
                gap12,
                GestureDetector(
                  onTap: () => context.push(Routes.sos),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      color: context.colors.error,
                      borderRadius: circ20,
                    ),
                    child: Text(
                      LocaleData.sos.getString(context),
                      style: context.texts.labelMedium!.copyWith(
                        color: context.colors.onError,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            gap24,
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: searchInputController,
                      style: context.texts.bodyMedium,
                      cursorColor: context.colors.onSurface,
                      decoration: InputDecoration(
                        hintText: LocaleData.search.getString(context),
                        hintStyle: context.texts.bodyMedium!.copyWith(
                          color: context.colors.surfaceContainerHighest,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: circ16,
                          borderSide: BorderSide(
                            color: context.colors.surfaceContainerLowest,
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: circ16,
                          borderSide: BorderSide(
                            color: context.colors.surfaceContainerLowest,
                            width: 1.5,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: circ16,
                          borderSide: BorderSide(
                            color: context.colors.surfaceContainerLowest,
                            width: 1.5,
                          ),
                        ),
                        isDense: true,
                        filled: true,
                        contentPadding: padding12,
                        fillColor: context.colors.surface,
                      ),
                    ),
                  ),
                  gap12,
                  AspectRatio(
                    aspectRatio: 1,
                    child: GestureDetector(
                      onTap: () async => context.push(Routes.filter),
                      child: Container(
                        padding: padding8,
                        decoration: BoxDecoration(
                          color: context.colors.surface,
                          borderRadius: circ16,
                          border: Border.all(
                            color: context.colors.surfaceContainerLowest,
                            width: 1.5,
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.filter_list,
                            size: 20,
                            color: context.colors.surfaceContainerHighest,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            gap24,
            Wrap(
              spacing: 12,
              runSpacing: 10,
              children:
                  RecommendationCategory.values.map((category) {
                    return Container(
                      padding: padding8,
                      decoration: BoxDecoration(
                        color: context.colors.surface,
                        borderRadius: circ20,
                        border: Border.all(
                          color: context.colors.surfaceContainerLowest,
                          width: 1,
                        ),
                      ),
                      child: Text(category.displayName),
                    );
                  }).toList(),
            ),
            gap32,
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount:
                      recommendationsController.userRecommendations.length,
                  itemBuilder: (context, index) {
                    final recommendation =
                        recommendationsController.userRecommendations[index];

                    return RecommendationTile(recommendation: recommendation);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

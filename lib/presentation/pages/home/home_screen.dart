import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/navigation/routes.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/data/controllers/recommendations_controller.dart';
import 'package:tinnitus/data/controllers/user_controller.dart';
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
  final userController = Get.find<UserController>();

  Widget buildForYou() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: recommendationsController.userRecommendations.length,
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
    );
  }

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
                  child: Obx(
                    () => Text(
                      userController.currentUser.value.name.isNotEmpty
                          ? '${LocaleData.goodMorning.getString(context)}, ${userController.currentUser.value.name}'
                          : LocaleData.forYou.getString(context),
                      style: context.texts.headlineSmall,
                    ),
                  ),
                ),
              ],
            ),
            gap16,
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: searchInputController,
                      style: context.texts.bodyLarge,
                      cursorColor: context.colors.onSurface,
                      decoration: InputDecoration(
                        hintText: LocaleData.search.getString(context),
                        hintStyle: context.texts.bodyLarge!.copyWith(
                          color: context.colors.surfaceContainerHighest,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: circ60,
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: circ60,
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: circ60,
                          borderSide: BorderSide.none,
                        ),
                        isDense: true,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
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
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.filter,
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
            gap32,
            // Wrap(
            //   spacing: 12,
            //   runSpacing: 10,
            //   children:
            //       RecommendationCategory.values.map((category) {
            //         return Container(
            //           padding: padding8,
            //           decoration: BoxDecoration(
            //             color: context.colors.surface,
            //             borderRadius: circ20,
            //             border: Border.all(
            //               color: context.colors.surfaceContainerLowest,
            //               width: 1,
            //             ),
            //           ),
            //           child: Text(category.displayName),
            //         );
            //       }).toList(),
            // ),
            buildForYou(),
          ],
        ),
      ),
    );
  }
}

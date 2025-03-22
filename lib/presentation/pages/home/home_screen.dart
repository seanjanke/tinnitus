import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/navigation/routes.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/data/controllers/recommendations_controller.dart';
import 'package:tinnitus/data/controllers/user_controller.dart';
import 'package:tinnitus/data/models/recom.dart';
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

  List<Recommendation> get filteredRecommendations {
    final searchText = searchInputController.text.toLowerCase();
    if (searchText.isEmpty) {
      return recommendationsController.userRecommendations;
    } else {
      return recommendationsController.userRecommendations.where((
        recommendation,
      ) {
        return recommendation.title
            .getString(context)
            .toLowerCase()
            .contains(searchText);
      }).toList();
    }
  }

  Widget buildForYou() {
    return Expanded(
      child:
          filteredRecommendations.isNotEmpty
              ? ListView.builder(
                itemCount: filteredRecommendations.length,
                itemBuilder: (context, index) {
                  final recommendation = filteredRecommendations[index];

                  return RecommendationTile(recommendation: recommendation);
                },
              )
              : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.magnifyingGlass,
                      size: 48,
                      color: context.colors.surfaceContainerHigh,
                    ),
                    gap20,
                    Text(
                      LocaleData.emptySearch.getString(context),
                      style: context.texts.bodyLarge!.copyWith(
                        color: context.colors.surfaceContainerHigh,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
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
                  child: Text(
                    'Find Your Relief',
                    style: context.texts.headlineSmall,
                  ),
                ),
              ],
            ),
            gap12,
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: searchInputController,
                      style: context.texts.bodyLarge,
                      cursorColor: context.colors.onSurface,
                      cursorWidth: 2.5,
                      cursorHeight: 24,
                      decoration: InputDecoration(
                        hintText: LocaleData.search.getString(context),
                        hintStyle: context.texts.bodyLarge!.copyWith(
                          color: context.colors.surfaceContainerHigh,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: circ60,
                          borderSide: BorderSide(
                            color: context.colors.surfaceContainerLowest,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: circ60,
                          borderSide: BorderSide(
                            color: context.colors.surfaceContainerLowest,
                            width: 1.5,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: circ60,
                          borderSide: BorderSide(
                            color: context.colors.surfaceContainerLowest,
                            width: 1.5,
                          ),
                        ),
                        isDense: true,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        fillColor: context.colors.surface,
                      ),
                      onChanged: (_) {
                        setState(
                          () {},
                        ); // Rebuild the widget when the search text changes
                      },
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
                          border: Border.all(
                            color: context.colors.surfaceContainerLowest,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.filter,
                            size: 20,
                            color: context.colors.surfaceContainerHigh,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            gap32,
            buildForYou(),
          ],
        ),
      ),
    );
  }
}

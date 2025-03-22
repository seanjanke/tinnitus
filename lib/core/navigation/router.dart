import 'package:flutter/material.dart';
import 'package:tinnitus/core/navigation/routes.dart';
import 'package:tinnitus/data/models/recom.dart';
import 'package:tinnitus/presentation/pages/chat/chat_screen.dart';
import 'package:tinnitus/presentation/pages/filter/filter_screen.dart';
import 'package:tinnitus/presentation/pages/home/home_screen.dart';
import 'package:tinnitus/presentation/pages/home/recommendation_detail_screen.dart';
import 'package:tinnitus/presentation/pages/main/main_screen.dart';
import 'package:tinnitus/presentation/pages/onboarding/onboarding_screen.dart';
import 'package:tinnitus/presentation/pages/profile/profile_screen.dart';
import 'package:tinnitus/presentation/pages/settings/pages/language_screen.dart';
import 'package:tinnitus/presentation/pages/settings/settings_screen.dart';
import 'package:tinnitus/presentation/pages/welcome/welcome_screens.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

GoRouter router({required bool hasCompletedOnboarding}) => GoRouter(
  initialLocation: hasCompletedOnboarding ? Routes.home : Routes.onboarding,
  routes: [
    StatefulShellRoute.indexedStack(
      pageBuilder:
          (context, state, navigationShell) => CustomTransitionPage<void>(
            child: MainScreen(navigationShell: navigationShell),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.home,
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.chat,
              builder: (context, state) => const ChatScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.profile,
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(path: Routes.home, builder: (context, state) => HomeScreen()),
    GoRoute(path: Routes.chat, builder: (context, state) => ChatScreen()),
    GoRoute(path: Routes.profile, builder: (context, state) => ProfileScreen()),
    GoRoute(
      path: Routes.settings,
      builder: (context, state) => SettingsScreen(),
    ),
    GoRoute(
      path: Routes.language,
      builder: (context, state) => LanguageScreen(),
    ),
    GoRoute(path: Routes.filter, builder: (context, state) => FilterScreen()),
    GoRoute(
      path: Routes.onboarding,
      builder: (context, state) {
        final isInitialOnboarding = state.extra as bool? ?? true;
        return OnboardingScreen(isInitialOnboarding: isInitialOnboarding);
      },
    ),
    GoRoute(
      path: Routes.recomDetail,
      builder: (context, state) {
        final recom = state.extra as Recommendation;
        return RecommendationDetailScreen(recom: recom);
      },
    ),
    GoRoute(
      path: Routes.welcome,
      builder: (context, state) => WelcomeScreens(),
    ),
  ],
);

import 'package:flutter/material.dart';
import 'package:tinnitus/core/navigation/routes.dart';
import 'package:tinnitus/presentation/pages/chat/chat_screen.dart';
import 'package:tinnitus/presentation/pages/home/home_screen.dart';
import 'package:tinnitus/presentation/pages/main/main_screen.dart';
import 'package:tinnitus/presentation/pages/profile/profile_screen.dart';
import 'package:tinnitus/presentation/pages/settings/pages/language_screen.dart';
import 'package:tinnitus/presentation/pages/settings/settings_screen.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final GoRouter router = GoRouter(
  initialLocation: Routes.home,
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
              builder: (context, state) => const ProfileScren(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(path: Routes.home, builder: (context, state) => HomeScreen()),
    GoRoute(path: Routes.chat, builder: (context, state) => ChatScreen()),
    GoRoute(path: Routes.profile, builder: (context, state) => ProfileScren()),
    GoRoute(
      path: Routes.settings,
      builder: (context, state) => SettingsScreen(),
    ),
    GoRoute(
      path: Routes.language,
      builder: (context, state) => LanguageScreen(),
    ),
  ],
);

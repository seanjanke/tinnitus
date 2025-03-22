import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';

class MainScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainScreen({required this.navigationShell, Key? key})
    : super(key: key ?? const ValueKey<String>('MainScreen'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          bottomNavigationBarTheme: Theme.of(context).bottomNavigationBarTheme,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(height: 0, color: context.colors.surfaceContainerLowest),
            BottomNavigationBar(
              currentIndex: navigationShell.currentIndex,
              onTap: navigationShell.goBranch,
              items: [
                BottomNavigationBarItem(
                  icon: HugeIcon(
                    icon: HugeIcons.strokeRoundedHome01,
                    color:
                        navigationShell.currentIndex == 0
                            ? context.bottomNavTheme.selectedItemColor!
                            : context.bottomNavTheme.unselectedItemColor!,
                    size: 28,
                  ),
                  label: LocaleData.home.getString(context),
                  //label: LocaleData.scan.getString(context),
                ),
                BottomNavigationBarItem(
                  icon: HugeIcon(
                    icon: HugeIcons.strokeRoundedChatting01,
                    color:
                        navigationShell.currentIndex == 1
                            ? context.bottomNavTheme.selectedItemColor!
                            : context.bottomNavTheme.unselectedItemColor!,
                    size: 28,
                  ),
                  label: LocaleData.chat.getString(context),
                  // label: LocaleData.history.getString(context),
                ),
                BottomNavigationBarItem(
                  icon: HugeIcon(
                    icon: HugeIcons.strokeRoundedUserCircle,
                    color:
                        navigationShell.currentIndex == 2
                            ? context.bottomNavTheme.selectedItemColor!
                            : context.bottomNavTheme.unselectedItemColor!,
                    size: 28,
                  ),
                  label: LocaleData.profile.getString(context),
                  // label: LocaleData.settings.getString(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

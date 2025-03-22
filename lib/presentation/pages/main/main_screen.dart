import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
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
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: context.bgColor,
          currentIndex: navigationShell.currentIndex,
          onTap: navigationShell.goBranch,
          items: [
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.house,
                color:
                    navigationShell.currentIndex == 0
                        ? context.bottomNavTheme.selectedItemColor!
                        : context.bottomNavTheme.unselectedItemColor!,
                size: 24,
              ),
              label: LocaleData.home.getString(context),
              //label: LocaleData.scan.getString(context),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.solidComments,
                color:
                    navigationShell.currentIndex == 1
                        ? context.bottomNavTheme.selectedItemColor!
                        : context.bottomNavTheme.unselectedItemColor!,
                size: 24,
              ),
              label: LocaleData.chat.getString(context),
              // label: LocaleData.history.getString(context),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.solidCircleUser,
                color:
                    navigationShell.currentIndex == 2
                        ? context.bottomNavTheme.selectedItemColor!
                        : context.bottomNavTheme.unselectedItemColor!,
                size: 24,
              ),
              label: LocaleData.profile.getString(context),
              // label: LocaleData.settings.getString(context),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/data/models/recom.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';
import 'package:tinnitus/presentation/widgets/button.dart';

class WelcomeScreens extends StatefulWidget {
  const WelcomeScreens({super.key});

  @override
  State<WelcomeScreens> createState() => _WelcomeScreensState();
}

class _WelcomeScreensState extends State<WelcomeScreens> {
  int index = 0;

  final icons = [
    FontAwesomeIcons.handHoldingMedical,
    FontAwesomeIcons.solidFaceSmileWink,
    FontAwesomeIcons.solidGem,
    FontAwesomeIcons.magnifyingGlass,
  ];

  final titles = [
    'Build for You - \nWith You in mind',
    'Your 24/7 Emotional Companion',
    'Grounded in Gold-Standard Care',
    'Discover, Explore, Empower Yourself',
  ];

  final descriptions = [
    "TinnAid is designed exclusively for people diagnosed with chronic tinnitus.",
    "Tinnitus can affect more than your ears — it impacts your emotions, sleep, energy, and focus. We’re here to walk beside you.",
    "You will get clinically backed, first-line recommendations so you can start your journey on solid, proven ground.",
    "Curious about other approaches? Our marketplace showcases options not yet studied in clinical trials.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: safeArea,
        child: Column(
          children: [
            const Spacer(),
            FaIcon(icons[index], size: 120, color: iconColors[index]),
            const Spacer(),
            Center(
              child: Text(
                titles[index],
                style: GoogleFonts.sora(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  color: context.colors.onSurface,
                  height: 1.3,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            gap12,
            Text(
              descriptions[index],
              style: context.texts.bodyMedium!.copyWith(
                color: context.colors.surfaceContainerHighest,
              ),
              textAlign: TextAlign.center,
            ),
            gap32,
            gap32,
            Button(
              title: 'Continue',
              bgColor: context.colors.onSurface,
              onTap: () {
                setState(() {
                  index++;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

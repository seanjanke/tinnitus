import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/data/models/recom_category.dart';

final iconColors = [
  Color(0xff3474FF),
  Color(0xff3AC477),
  Color(0xffFFB000),
  Color(0xffF792E1),
  Color(0xffF45340),
];

class Recommendation {
  final int id;
  final RecommendationCategory category;
  final String title;
  final String description;
  final IconData icon;
  final Color iconColor;

  Recommendation({
    required this.id,
    required this.category,
    required this.title,
    required this.description,
    required this.icon,
    required this.iconColor,
  });
}

final allRecommendations = <Recommendation>[
  Recommendation(
    id: 0, // Hearing aids
    category: RecommendationCategory.hearingProblem,
    title: LocaleData.recommendation1,
    description: LocaleData.description1,
    icon: FontAwesomeIcons.earListen,
    iconColor: iconColors[0],
  ),
  Recommendation(
    id: 1, // Cochlear implant
    category: RecommendationCategory.hearingProblem,
    title: LocaleData.recommendation2,
    description: LocaleData.description2,
    icon: FontAwesomeIcons.headSideVirus,
    iconColor: iconColors[1],
  ),
  Recommendation(
    id: 2, // Tinnitus counseling
    category: RecommendationCategory.hearingProblem,
    title: LocaleData.recommendation3,
    description: LocaleData.description3,
    icon: FontAwesomeIcons.solidComments,
    iconColor: iconColors[2],
  ),
  // Category: Social Emotional Health (E & C)
  Recommendation(
    id: 3, // kognitive behavioral therapy
    category: RecommendationCategory.emotionalDistress,
    title: LocaleData.recommendation4,
    description: LocaleData.description4,
    icon: FontAwesomeIcons.userDoctor,
    iconColor: iconColors[3],
  ),
  Recommendation(
    id: 4, // Tinnitus retraining therapy
    category: RecommendationCategory.emotionalDistress,
    title: LocaleData.recommendation5,
    description: LocaleData.description5,
    icon: FontAwesomeIcons.userDoctor,
    iconColor: iconColors[4],
  ),
  Recommendation(
    id: 5, // Acceptance commitment therapy
    category: RecommendationCategory.emotionalDistress,
    title: LocaleData.recommendation6,
    description: LocaleData.description6,
    icon: FontAwesomeIcons.shieldHeart,
    iconColor: iconColors[0],
  ),
  // Category: Noise (I)
  Recommendation(
    id: 7, // Music therapy
    category: RecommendationCategory.emotionalDistress,
    title: LocaleData.recommendation7,
    description: LocaleData.description7,
    icon: FontAwesomeIcons.music,
    iconColor: iconColors[1],
  ),
  Recommendation(
    id: 8, // Sound therapy
    category: RecommendationCategory.emotionalDistress,
    title: LocaleData.recommendation8,
    description: LocaleData.description8,
    icon: FontAwesomeIcons.volumeHigh,
    iconColor: iconColors[2],
  ),

  // Category: Social Emotional Health (E & C)
  Recommendation(
    id: 9, // Antidepressants
    category: RecommendationCategory.emotionalDistress,
    title: LocaleData.recommendation9,
    description: LocaleData.description9,
    icon: FontAwesomeIcons.pills,
    iconColor: iconColors[3],
  ),
  Recommendation(
    id: 10, // Benzodiazepines
    category: RecommendationCategory.emotionalDistress,
    title: LocaleData.recommendation10,
    description: LocaleData.description10,
    icon: FontAwesomeIcons.tablets,
    iconColor: iconColors[4],
  ),

  // Category: Sleep (Sl & So)
  Recommendation(
    id: 11, // Melatonin
    category: RecommendationCategory.sleepDisturbances,
    title: LocaleData.recommendation11,
    description: LocaleData.description11,
    icon: HugeIcons.strokeRoundedChocolate,
    iconColor: iconColors[0],
  ),
  Recommendation(
    id: 12, // Cannabis
    category: RecommendationCategory.sleepDisturbances,
    title: LocaleData.recommendation12,
    description: LocaleData.description12,
    icon: FontAwesomeIcons.capsules,
    iconColor: iconColors[1],
  ),
  Recommendation(
    id: 13, // Sleep hygiene
    category: RecommendationCategory.sleepDisturbances,
    title: LocaleData.recommendation13,
    description: LocaleData.description13,
    icon: FontAwesomeIcons.bed,
    iconColor: iconColors[2],
  ),
  Recommendation(
    id: 14, // Psilocybin
    category: RecommendationCategory.lifestyle,
    title: LocaleData.recommendation14,
    description: LocaleData.description14,
    icon: FontAwesomeIcons.capsules,
    iconColor: iconColors[3],
  ),
  Recommendation(
    id: 15, // Vipassana meditation
    category: RecommendationCategory.spiritual,
    title: LocaleData.recommendation15,
    description: LocaleData.description15,
    icon: FontAwesomeIcons.spa,
    iconColor: iconColors[4],
  ),
  Recommendation(
    id: 16, // Mindfulness
    category: RecommendationCategory.emotionalDistress,
    title: LocaleData.recommendation16,
    description: LocaleData.description16,
    icon: FontAwesomeIcons.spa,
    iconColor: iconColors[0],
  ),
  Recommendation(
    id: 17, // Gut-brain diet recommendation
    category: RecommendationCategory.lifestyle,
    title: LocaleData.recommendation17,
    description: LocaleData.description17,
    icon: FontAwesomeIcons.brain,
    iconColor: iconColors[1],
  ),
  Recommendation(
    id: 18, // No-dairy diet
    category: RecommendationCategory.lifestyle,
    title: LocaleData.recommendation18,
    description: LocaleData.description18,
    icon: FontAwesomeIcons.wheatAwn,
    iconColor: iconColors[2],
  ),
  Recommendation(
    id: 19, // Functional medicine referral
    category: RecommendationCategory.lifestyle,
    title: LocaleData.recommendation19,
    description: LocaleData.description19,
    icon: FontAwesomeIcons.handHoldingHeart,
    iconColor: iconColors[3],
  ),
];

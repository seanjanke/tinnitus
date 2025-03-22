import 'package:flutter/material.dart';

import 'package:hugeicons/hugeicons.dart';

import 'package:tinnitus/core/localization/locales.dart';

import 'package:tinnitus/data/models/recom_category.dart';

class Recommendation {
  final int id;
  final RecommendationCategory category;
  final String title;
  final String description;
  final IconData icon;

  const Recommendation({
    required this.id,
    required this.category,
    required this.title,
    required this.description,
    required this.icon,
  });
}

const allRecommendations = <Recommendation>[
  Recommendation(
    id: 0, // Hearing aids
    category: RecommendationCategory.hearingProblem,
    title: LocaleData.recommendation1,
    description: LocaleData.description1,
    icon: HugeIcons.strokeRoundedMusicNote01,
  ),
  Recommendation(
    id: 1, // Cochlear implant
    category: RecommendationCategory.hearingProblem,
    title: LocaleData.recommendation2,
    description: LocaleData.description2,
    icon: HugeIcons.strokeRoundedMusicNote01,
  ),
  Recommendation(
    id: 2, // Tinnitus counseling
    category: RecommendationCategory.hearingProblem,
    title: LocaleData.recommendation3,
    description: LocaleData.description3,
    icon: HugeIcons.strokeRoundedMusicNote01,
  ),

  // Category: Social Emotional Health (E & C)
  Recommendation(
    id: 3, // Cochlear implant
    category: RecommendationCategory.emotionalDistress,
    title: LocaleData.recommendation4,
    description: LocaleData.description4,
    icon: HugeIcons.strokeRoundedDoctor01,
  ),
  Recommendation(
    id: 4, // Tinnitus retraining therapy
    category: RecommendationCategory.emotionalDistress,
    title: LocaleData.recommendation5,
    description: LocaleData.description5,
    icon: HugeIcons.strokeRoundedDoctor01,
  ),
  Recommendation(
    id: 5, // Acceptance commitment therapy
    category: RecommendationCategory.emotionalDistress,
    title: LocaleData.recommendation6,
    description: LocaleData.description6,
    icon: HugeIcons.strokeRoundedChocolate,
  ),
  // Category: Noise (I)
  Recommendation(
    id: 7, // Music therapy
    category: RecommendationCategory.emotionalDistress,
    title: LocaleData.recommendation7,
    description: LocaleData.description7,
    icon: HugeIcons.strokeRoundedChocolate,
  ),
  Recommendation(
    id: 8, // Sound therapy
    category: RecommendationCategory.emotionalDistress,
    title: LocaleData.recommendation8,
    description: LocaleData.description8,
    icon: HugeIcons.strokeRoundedChocolate,
  ),

  // Category: Social Emotional Health (E & C)
  Recommendation(
    id: 9, // Antidepressants
    category: RecommendationCategory.emotionalDistress,
    title: LocaleData.recommendation9,
    description: LocaleData.description9,
    icon: HugeIcons.strokeRoundedChocolate,
  ),
  Recommendation(
    id: 10, // Benzodiazepines
    category: RecommendationCategory.emotionalDistress,
    title: LocaleData.recommendation10,
    description: LocaleData.description10,
    icon: HugeIcons.strokeRoundedChocolate,
  ),

  // Category: Sleep (Sl & So)
  Recommendation(
    id: 11, // Melatonin
    category: RecommendationCategory.sleepDisturbances,
    title: LocaleData.recommendation11,
    description: LocaleData.description11,
    icon: HugeIcons.strokeRoundedChocolate,
  ),
  Recommendation(
    id: 12, // Cannabis
    category: RecommendationCategory.sleepDisturbances,
    title: LocaleData.recommendation12,
    description: LocaleData.description12,
    icon: HugeIcons.strokeRoundedChocolate,
  ),
  Recommendation(
    id: 13, // Sleep hygiene
    category: RecommendationCategory.sleepDisturbances,
    title: LocaleData.recommendation13,
    description: LocaleData.description13,
    icon: HugeIcons.strokeRoundedChocolate,
  ),

  // Category: Lifestyle
  Recommendation(
    id: 14, // Psilocybin
    category: RecommendationCategory.lifestyle,
    title: LocaleData.recommendation14,
    description: LocaleData.description14,
    icon: HugeIcons.strokeRoundedChocolate,
  ),
  Recommendation(
    id: 15, // Vipassana meditation
    category: RecommendationCategory.spiritual,
    title: LocaleData.recommendation15,
    description: LocaleData.description15,
    icon: HugeIcons.strokeRoundedChocolate,
  ),
  Recommendation(
    id: 16, // Mindfulness
    category: RecommendationCategory.emotionalDistress,
    title: LocaleData.recommendation16,
    description: LocaleData.description16,
    icon: HugeIcons.strokeRoundedChocolate,
  ),
  Recommendation(
    id: 17, // Gut-brain diet recommendation
    category: RecommendationCategory.lifestyle,
    title: LocaleData.recommendation17,
    description: LocaleData.description17,
    icon: HugeIcons.strokeRoundedChocolate,
  ),
  Recommendation(
    id: 18, // No-dairy diet
    category: RecommendationCategory.lifestyle,
    title: LocaleData.recommendation18,
    description: LocaleData.description18,
    icon: HugeIcons.strokeRoundedChocolate,
  ),
  Recommendation(
    id: 19, // Functional medicine referral
    category: RecommendationCategory.lifestyle,
    title: LocaleData.recommendation19,
    description: LocaleData.description19,
    icon: HugeIcons.strokeRoundedChocolate,
  ),
  Recommendation(
    id: 20, // Chocolate meditation
    category: RecommendationCategory.spiritual,
    title: LocaleData.recommendation21,
    description: LocaleData.description21,
    icon: HugeIcons.strokeRoundedChocolate,
  ),
];

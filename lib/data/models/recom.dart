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
    id: 0,
    category: RecommendationCategory.hearningProblem,
    title: LocaleData.chocolateMeditation,
    description:
        'Eat a piece of chocolate and focus on the taste and texture. Start your meditation and go into a deep state of relaxation.',
    icon: HugeIcons.strokeRoundedChocolate,
  ),
  Recommendation(
    id: 1,
    category: RecommendationCategory.hearningProblem,
    title: 'Chocolate Meditation 2',
    description:
        'Eat a piece of chocolate and focus on the taste and texture. Start your meditation and go into a deep state of relaxation.',
    icon: HugeIcons.strokeRoundedChocolate,
  ),
  Recommendation(
    id: 2,
    category: RecommendationCategory.hearningProblem,
    title: 'Chocolate Meditation 3',
    description:
        'Eat a piece of chocolate and focus on the taste and texture. Start your meditation and go into a deep state of relaxation.',
    icon: HugeIcons.strokeRoundedChocolate,
  ),
];

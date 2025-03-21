enum RecommendationCategory {
  hearningProblem,
  tinnitusRelated,
  emotionalDistress,
  otherComorbidities,
  sleepDisturbances,
  spiritual,
  lifestyle,
  somaticComplaints;

  String get displayName {
    switch (this) {
      case RecommendationCategory.hearningProblem:
        return 'Hearing Problem';
      case RecommendationCategory.tinnitusRelated:
        return 'Tinnitus Related';
      case RecommendationCategory.emotionalDistress:
        return 'Emotional Distress';
      case RecommendationCategory.otherComorbidities:
        return 'Other Comorbidities';
      case RecommendationCategory.sleepDisturbances:
        return 'Sleep Disturbances';
      case RecommendationCategory.spiritual:
        return 'Spiritual';
      case RecommendationCategory.lifestyle:
        return 'Lifestyle';
      case RecommendationCategory.somaticComplaints:
        return 'Somatic Complaints';
    }
  }
}

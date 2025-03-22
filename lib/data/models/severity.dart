import 'package:tinnitus/core/localization/locales.dart';

enum AnswerValue { trueValue, partiallyTrue, notTrue }

enum SeverityLevel {
  one(
    displayName: '1',
    level: 1,
    description: LocaleData.severityLevel1Description,
  ),
  two(
    displayName: '2',
    level: 2,
    description: LocaleData.severityLevel2Description,
  ),
  three(
    displayName: '3',
    level: 3,
    description: LocaleData.severityLevel3Description,
  ),
  four(
    displayName: '4',
    level: 4,
    description: LocaleData.severityLevel4Description,
  );

  final String displayName;
  final int level;
  final String description;

  const SeverityLevel({
    required this.displayName,
    required this.level,
    required this.description,
  });
}

extension AnswerValueExtension on AnswerValue {
  String get displayName {
    switch (this) {
      case AnswerValue.trueValue:
        return LocaleData.scalarhigh;
      case AnswerValue.partiallyTrue:
        return LocaleData.scalarmid;
      case AnswerValue.notTrue:
        return LocaleData.scalarlow;
    }
  }
}

class Severity {
  int id;
  List<AnswerValue> answers;
  SeverityLevel level;

  Severity({required this.id, required this.answers, required this.level});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'answers': answers.map((e) => e.index).toList().toString(),
      'level': level.index,
    };
  }

  factory Severity.initial(int questionCount) {
    return Severity(
      id: 0,
      answers: List.generate(questionCount, (_) => AnswerValue.partiallyTrue),
      level: SeverityLevel.one,
    );
  }

  factory Severity.fromMap(Map<String, dynamic> map) {
    List<int> answersIndexes =
        (map['answers'] as String)
            .replaceAll(RegExp(r'[\[\]]'), '')
            .split(',')
            .map(int.parse)
            .toList();
    return Severity(
      id: map['id'],
      answers: answersIndexes.map((i) => AnswerValue.values[i]).toList(),
      level: SeverityLevel.values[map['level'] ?? 0],
    );
  }
}

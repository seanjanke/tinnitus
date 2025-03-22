import 'package:tinnitus/core/localization/locales.dart';

enum AnswerValue { trueValue, partiallyTrue, notTrue }

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

  Severity({required this.id, required this.answers});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'answers': answers.map((e) => e.index).toList().toString(),
    };
  }

  factory Severity.initial(int questionCount) {
    return Severity(
      id: 0,
      answers: List.generate(questionCount, (_) => AnswerValue.partiallyTrue),
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/data/models/severity.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';

class SeverityAnswerListTile extends StatelessWidget {
  final AnswerValue answer;
  final String questionText;

  const SeverityAnswerListTile({
    required this.answer,
    required this.questionText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              questionText,
              style: context.texts.bodyLarge,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          gap12,
          Text(
            answer.displayName.getString(context),
            style: context.texts.bodyMedium!.copyWith(
              color: context.colors.surfaceContainerHigh,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

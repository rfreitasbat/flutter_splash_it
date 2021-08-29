import 'package:flutter/material.dart';

import 'package:split_it/theme/app_theme.dart';

class StepTilteWidget extends StatelessWidget {
  final String title;
  final String subTitle;

  const StepTilteWidget({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text.rich(
        TextSpan(text: title, style: AppTheme.textStyles.stepTitle, children: [
          TextSpan(
            text: "\n$subTitle",
            style: AppTheme.textStyles.stepSubTitle,
          ),
        ]),
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 50,
      ),
    ]);
  }
}

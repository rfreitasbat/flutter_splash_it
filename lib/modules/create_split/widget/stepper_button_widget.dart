import 'package:flutter/material.dart';

import 'package:split_it/theme/app_theme.dart';

class StepperButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback? onTep;
  final bool enabled;

  const StepperButtonWidget({
    Key? key,
    required this.label,
    required this.onTep,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: enabled ? onTep : null,
        child: Text(
          label,
          style: enabled
              ? AppTheme.textStyles.stepperNextButton
              : AppTheme.textStyles.stepperNextButtonDisabled,
        ),
      ),
    );
  }
}

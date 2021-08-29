import 'package:flutter/material.dart';

import 'package:split_it/modules/create_split/widget/stepper_button_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class BottomStepperBarWidget extends StatelessWidget {
  final VoidCallback onTapNextPage;
  final VoidCallback onTapCancel;
  final bool enabladButton;

  const BottomStepperBarWidget({
    Key? key,
    required this.onTapNextPage,
    required this.onTapCancel,
    this.enabladButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Container(
        height: 72,
        child: Column(
          children: [
            Row(
              children: [
                StepperButtonWidget(
                  label: "Cancelar",
                  onTep: onTapCancel,
                ),
                Container(
                  width: 1,
                  height: 60,
                  color: AppTheme.colors.border,
                ),
                StepperButtonWidget(
                  enabled: enabladButton,
                  label: "Continuar",
                  onTep: onTapNextPage,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

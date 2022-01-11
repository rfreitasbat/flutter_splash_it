import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';

import 'package:split_it/modules/create_split/widget/stepper_button_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class BottomStepperBarWidget extends StatelessWidget {
  final VoidCallback onTapNextPage;
  final VoidCallback onTapCancel;
  final CreateSplitController controller;

  const BottomStepperBarWidget({
    Key? key,
    required this.onTapNextPage,
    required this.onTapCancel,
    required this.controller,
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
                Observer(
                  builder: (_) => StepperButtonWidget(
                    label: "Cancelar",
                    onTep: onTapCancel,
                  ),
                ),
                Container(
                  width: 1,
                  height: 60,
                  color: AppTheme.colors.border,
                ),
                Observer(
                  builder: (_) => StepperButtonWidget(
                    enabled: controller.enableNavigateButton,
                    label: "Continuar",
                    onTep: onTapNextPage,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

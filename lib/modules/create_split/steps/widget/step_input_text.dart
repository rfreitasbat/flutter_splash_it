import 'package:flutter/material.dart';

import 'package:split_it/theme/app_theme.dart';

class StepInputTextWidget extends StatelessWidget {
  final void Function(String) onChanged;
  final String hintText;
  final EdgeInsets? padding;
  final TextAlign align;

  const StepInputTextWidget({
    Key? key,
    required this.onChanged,
    required this.hintText,
    this.padding,
    this.align = TextAlign.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(horizontal: 64),
      child: TextField(
        onChanged: onChanged,
        textAlign: align,
        style: AppTheme.textStyles.textField,
        cursorColor: AppTheme.colors.backgroudSplash,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTheme.textStyles.hintTextField,
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: AppTheme.colors.inputBorder),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppTheme.colors.inputBorder),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppTheme.colors.inputBorder),
          ),
        ),
      ),
    );
  }
}

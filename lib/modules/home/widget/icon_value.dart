import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

enum IconValueType { send, receive }

class IconValueWidget extends StatelessWidget {
  final IconValueType type;
  const IconValueWidget({
    required this.type,
    Key? key,
  }) : super(key: key);

  String get pathImage =>
      "assets/images/value-${type == IconValueType.receive ? 'receive' : 'send'}.png";

  Color get backGroundColor => type == IconValueType.receive
      ? AppTheme.colors.positiveIconBackground
      : AppTheme.colors.negativeIconBackground;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backGroundColor, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Image.asset(
          pathImage,
          width: 35,
          height: 35,
        ),
      ),
      width: 48,
      height: 48,
    );
  }
}

import 'package:flutter/material.dart';

abstract class AppColorsBase {
  Color get backgroundPrimary;
  Color get backgroudSplash;
  Color get title;
  Color get button;
  Color get border;
  Color get infoCard;
  Color get infoCardValue1;
  Color get infoCardValue2;
  Color get textAppBar;
  Color get borderAppBar;
  Color get addIcon;
  Color get positiveIconBackground;
  Color get negativeIconBackground;
  Color get eventTileTitle;
  Color get eventTileSubtitle;
  Color get eventTileMoney;
  Color get eventTilePeople;
  Color get dividerEvent;
  Color get stepperIndicatorPrimary;
  Color get stepperIndicatorSecondary;
  Color get backButton;
  Color get stepperNextButton;
  Color get stepperNextButtonDisanled;
  Color get stepTitle;
  Color get stepSubTitle;
  Color get hintTextField;
  Color get textField;
  Color get inputBorder;
  Color get titleDetails;
  Color get subTitleDetails;
  Color get dividerDetails;
  Color get negativeDetails;
}

class AppColorsDefault implements AppColorsBase {
  @override
  Color get backgroudSplash => Color(0xFF40B38C);

  @override
  Color get title => Color(0xFF40B28C);

  @override
  Color get button => Color(0xFF666666);

  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);

  @override
  Color get border => Color(0xFFA9A9A9);

  @override
  Color get textAppBar => Color(0xFFFFFFFF);

  @override
  Color get borderAppBar => Color(0xFFFFFFFF);

  @override
  Color get addIcon => Color(0xFFF5F5F5);

  @override
  Color get positiveIconBackground => Color(0xFFE9F8F2);

  @override
  Color get negativeIconBackground => Color(0xFFFDECEF);

  @override
  Color get infoCard => Color(0xFF666666);

  @override
  Color get infoCardValue1 => Color(0xFF40B28C);

  @override
  Color get infoCardValue2 => Color(0xFFE83F5B);

  @override
  Color get eventTileMoney => Color(0xFF666666);

  @override
  Color get eventTilePeople => Color(0xFFA4B2AE);

  @override
  Color get eventTileSubtitle => Color(0xFF666666);

  @override
  Color get eventTileTitle => Color(0xFF455250);

  @override
  Color get dividerEvent => Color(0xFF666666);

  @override
  Color get stepperIndicatorPrimary => Color(0xFF3CAB82);

  @override
  Color get stepperIndicatorSecondary => Color(0xFF666666);

  @override
  Color get backButton => Color(0xFF666666);

  @override
  Color get stepperNextButton => Color(0xFF455250);

  @override
  Color get stepTitle => Color(0xFF455250);

  @override
  Color get stepSubTitle => Color(0xFF455250);

  @override
  Color get hintTextField => Color(0xFF666666);

  @override
  Color get textField => Color(0xFF455250);

  @override
  Color get inputBorder => Color(0xFF455250);

  @override
  Color get stepperNextButtonDisanled => Color(0xFF666666);

  @override
  Color get titleDetails => Color(0xFF455250);

  @override
  Color get subTitleDetails => Color(0xFF455250);

  @override
  Color get dividerDetails => Color(0xFFA4B2AE);

  @override
  Color get negativeDetails => Color(0xFFFF0000);
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
  TextStyle get appBar;
  TextStyle get infoCard;
  TextStyle get infoCardValue1;
  TextStyle get infoCardValue2;
  TextStyle get eventTileTitle;
  TextStyle get eventTileSubtitle;
  TextStyle get eventTileMoney;
  TextStyle get eventTilePeople;
  TextStyle get stepperIndicatorPrimary;
  TextStyle get stepperIndicatorSecondary;
  TextStyle get stepperNextButton;
  TextStyle get stepperNextButtonDisabled;
  TextStyle get stepTitle;
  TextStyle get stepSubTitle;
  TextStyle get hintTextField;
  TextStyle get textField;
  TextStyle get titleDetails;
  TextStyle get subTitleDetails;
  TextStyle get negativeDetails;
  TextStyle get addedFriend;
  TextStyle get notAddedFriend;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get button => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        textStyle: TextStyle(
          color: AppTheme.colors.button,
        ),
      );

  @override
  TextStyle get title => GoogleFonts.montserrat(
        color: AppTheme.colors.title,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get appBar => GoogleFonts.montserrat(
        color: AppTheme.colors.textAppBar,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get infoCard => GoogleFonts.inter(
        color: AppTheme.colors.infoCard,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get infoCardValue1 => GoogleFonts.inter(
        color: AppTheme.colors.infoCardValue1,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get infoCardValue2 => GoogleFonts.inter(
        color: AppTheme.colors.infoCardValue2,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get eventTileMoney => GoogleFonts.inter(
        color: AppTheme.colors.eventTileMoney,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get eventTilePeople => GoogleFonts.inter(
        color: AppTheme.colors.eventTilePeople,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get eventTileSubtitle => GoogleFonts.inter(
        color: AppTheme.colors.eventTileSubtitle,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get eventTileTitle => GoogleFonts.inter(
        color: AppTheme.colors.eventTileTitle,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get stepperIndicatorPrimary => GoogleFonts.roboto(
        color: AppTheme.colors.stepperIndicatorPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get stepperIndicatorSecondary => GoogleFonts.roboto(
        color: AppTheme.colors.stepperIndicatorSecondary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get stepperNextButton => GoogleFonts.inter(
        color: AppTheme.colors.stepperNextButton,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get stepperNextButtonDisabled => GoogleFonts.inter(
        color: AppTheme.colors.stepperNextButtonDisanled,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get stepSubTitle => GoogleFonts.inter(
        color: AppTheme.colors.stepSubTitle,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get stepTitle => GoogleFonts.inter(
        color: AppTheme.colors.stepTitle,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get hintTextField => GoogleFonts.inter(
        color: AppTheme.colors.hintTextField,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get textField => GoogleFonts.inter(
        color: AppTheme.colors.textField,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get titleDetails => GoogleFonts.montserrat(
      color: AppTheme.colors.titleDetails,
      fontSize: 22,
      fontWeight: FontWeight.w700);

  @override
  TextStyle get subTitleDetails => GoogleFonts.montserrat(
      color: AppTheme.colors.subTitleDetails,
      fontSize: 14,
      fontWeight: FontWeight.w700);

  @override
  TextStyle get negativeDetails => GoogleFonts.montserrat(
      color: AppTheme.colors.negativeDetails,
      fontSize: 14,
      fontWeight: FontWeight.w700);

  @override
  TextStyle get addedFriend => GoogleFonts.montserrat(
        color: AppTheme.colors.addedFriend,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get notAddedFriend => GoogleFonts.inter(
        color: AppTheme.colors.button,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );
}

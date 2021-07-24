import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
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
}

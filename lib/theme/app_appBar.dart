import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppBarTheme {
  Color get background;
  TextStyle get text;
}

class AppBarThemeDefault implements AppBarTheme {
  @override
  Color get background => Color(0xFF40B28C);

  @override
  TextStyle get text => GoogleFonts.montserrat(
        color: Color(0xFFFFFFFF),
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );
}

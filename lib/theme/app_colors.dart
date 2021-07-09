import 'package:flutter/material.dart';

abstract class AppColorsBase {
  Color get backgroud;
}

class AppColorsDefault implements AppColorsBase {
  @override
  Color get backgroud => Color(0xFF40B38C);
}

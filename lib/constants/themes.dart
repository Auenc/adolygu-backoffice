import 'package:adolygu_backoffice/constants/light_colours.dart';
import 'package:flutter/material.dart';

class Themes {
  static final lightIconTheme = ThemeData.light().iconTheme.copyWith(
        color: LightColors.accent,
      );

  static final light = ThemeData.light().copyWith(
    backgroundColor: LightColors.background,
    primaryColor: LightColors.background,
    primaryTextTheme: ThemeData.light().primaryTextTheme.copyWith(
          headline1: TextStyle(color: LightColors.accent),
        ),
    primaryIconTheme: lightIconTheme,
    iconTheme: lightIconTheme,
  );
  static final dark = ThemeData.dark().copyWith();
}

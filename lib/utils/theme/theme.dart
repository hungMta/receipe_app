import 'package:flutter/material.dart';
import 'package:recipe_app/utils/theme/app_textstyle.dart';

class AppTheme {
  final _default = ThemeData.light();
  ThemeData get appTheme {
    return _default.copyWith(textTheme: _textTheme);
  }

  TextTheme get _textTheme =>
      _default.textTheme.copyWith(bodyLarge: AppTextStyle.t12w700());
}

import 'package:flutter/material.dart';
import 'package:product_app/generated/l10n.dart';
import 'package:product_app/data/utilities/l10n/l10n_service.dart';
import 'package:product_app/presentation/utilities/color/app_colors.dart';
import 'package:product_app/presentation/utilities/color/color_scheme.dart';
extension BuildContextExt on BuildContext {
  AppColors get colors => Theme.of(this).colorScheme.appColors;

  TextTheme get fonts => Theme.of(this).textTheme;

  Size get sizes => MediaQuery.of(this).size;

  S get strings => AppLocale.of(this);
  void hideKeyboard() => FocusScope.of(this).unfocus();
}
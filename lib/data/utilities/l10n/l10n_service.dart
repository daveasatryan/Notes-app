import 'package:flutter/material.dart';
import 'package:product_app/generated/l10n.dart';

class AppLocale {
  const AppLocale();

  static S get current {
    return S.current;
  }

  static S of(BuildContext context) {
    return S.of(context);
  }
}

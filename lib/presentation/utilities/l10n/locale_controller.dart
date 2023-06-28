import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/presentation/utilities/l10n/language_service.dart';

@injectable
class LocaleController with ChangeNotifier {
  LocaleController(this._service) {
    _locale = _service.locale();
    notifyListeners();
  }

  late Locale _locale;
  final LocaleSettingsService _service;

  Locale get locale => _locale;

  /// Returns true if [newLocale] is valid, either false
  bool checkLocale(Locale? newLocale) {
    if (newLocale == null) return false;
    if (newLocale == _locale) return false;
    return true;
  }

  /// Updates current [Locale] to [newLocale] and notifies listeners
  Future<void> updateLocale(Locale? newLocale) async {
    if (checkLocale(newLocale)) {
      _locale = newLocale!;
      notifyListeners();
    }
  }
}

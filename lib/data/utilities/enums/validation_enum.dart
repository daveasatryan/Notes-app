
import 'package:product_app/data/utilities/l10n/l10n_service.dart';

enum ValidationEnum { none, valid, empty, notEmpty, invalid }

extension ValidationEnumExt on ValidationEnum {

 
  String? get errorMessage {
    final strings = AppLocale.current;
    switch (this) {
      case ValidationEnum.valid:
        return null;
      case ValidationEnum.empty:
        return strings.field_is_required;
      case ValidationEnum.invalid:
        return strings.invalid_email;
      case ValidationEnum.notEmpty:
        return null;
      case ValidationEnum.none:
        return null;
    }
  }

  String? get errorMassagePassword {
    final strings = AppLocale.current;

    switch (this) {
      case ValidationEnum.valid:
        return null;
      case ValidationEnum.empty:
        return strings.field_is_required;
      case ValidationEnum.invalid:
        return strings.invalid_filed;
      case ValidationEnum.notEmpty:
        return null;
      case ValidationEnum.none:
        return null;
    }
  }
}

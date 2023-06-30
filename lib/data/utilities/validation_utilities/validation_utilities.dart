import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:get/get.dart';

class ValidationUtils {
  static bool isValidPassword(String? password) {
    if (password.isNullOrEmpty() || (password?.length ?? 0) < 8) return false;

    return true;
  }

  static bool isValidEmail(String? email) => GetUtils.isEmail(email ?? '');
}

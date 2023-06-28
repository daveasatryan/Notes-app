import 'package:flutter/widgets.dart';
import 'package:product_app/data/utilities/models/user/user_model.dart';
import 'package:product_app/data/utilities/storage/preferences_manager.dart';

class UserProvider extends ChangeNotifier {
  UserModel? _userModel;

  set userModel(UserModel? userModel) {
    _userModel = userModel;
    PreferencesManager.setUserData(_userModel);
    notifyListeners();
  }

  UserModel? get userModel {
    _userModel ??= PreferencesManager.user;
    return _userModel;
  }

  void clearUserData() {
    _userModel = null;
    PreferencesManager.clearUserData();
  }
}

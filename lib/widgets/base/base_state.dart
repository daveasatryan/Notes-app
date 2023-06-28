
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:product_app/data/utilities/enums/dialog_icons.dart';
import 'package:product_app/data/utilities/storage/preferences_manager.dart';
import 'package:product_app/presentation/utilities/color/app_colors.dart';
import 'package:product_app/presentation/utilities/extentions/context_extention.dart';
import 'package:product_app/presentation/utilities/provider/user_provider.dart';
import 'package:product_app/presentation/utilities/routes/app_routes.dart';
import 'package:product_app/widgets/app_error_widget.dart';
import 'package:product_app/widgets/app_loading.dart';
import 'package:product_app/widgets/two_option_dialog_widget.dart';

mixin BaseStateMixin<T extends StatefulWidget> on State<T> {
  bool _isLoaderShown = false;

  AppColors get colors => context.colors;

  TextTheme get fonts => context.fonts;

  Size get sizes => context.sizes;

  void showErrorDialog({
    required String msg,
    String? title,
    String? buttonText,
    Function()? onPressed,
    bool isBarrierDismissible = true,
    bool showButton = true,
    DialogIcons icons = DialogIcons.error,
  }) {
    hideLoading(context);
    showDialog(
      context: context,
      useSafeArea: false,
      barrierColor: colors.transparent,
      barrierDismissible: isBarrierDismissible,
      builder: (context) {
        return AppErrorWidget(
          title: title,
          icons: icons,
          buttonText: buttonText,
          message: msg,
          showButton: showButton,
          onPressed: onPressed,
        );
      },
    );
  }

  void showLogoutDialog({
    required String msg,
    String? title,
    Function? onPressed,
  }) {
    hideLoading(context);
    showDialog(
      context: context,
      barrierColor: colors.barrierColor,
      barrierDismissible: false,
      builder: (context) {
        return AppErrorWidget(
          message: msg,
          onPressed: () {
            onPressed?.call();
            Get.offAllNamed(AppRoutes.splashRoute);
          },
        );
      },
    );
    PreferencesManager.clearUserData();
    context.read<UserProvider>().userModel = null;
  }

  void showLoading() {
    if (_isLoaderShown) {
      return;
    }
    _isLoaderShown = true;
    showDialog(
      barrierDismissible: false,
      barrierColor: colors.barrierColor,
      context: context,
      useRootNavigator: true,
      builder: (context) {
        return const AppLoadingWidget();
      },
    );
  }

  void showTwoOptionDialog({
    required String msg,
    String? title,
    String? positiveButtonText,
    VoidCallback? positiveButtonClick,
    String? negativeButtonText,
    VoidCallback? negativeButtonClick,
    bool isBarrierDismissible = false,
    bool showHeaderIcon = true,
    EdgeInsets? msgPadding,
    TextStyle? msgStyle,
    TextStyle? titleStyle,
    DialogIcons icon = DialogIcons.done,
  }) {
    hideLoading(context);
    showDialog(
      context: context,
      barrierColor: colors.barrierColor,
      barrierDismissible: isBarrierDismissible,
      builder: (context) {
        return TwoOptionDialogWidget(
          msg: msg,
          title: title,
          showHeaderIcon: showHeaderIcon,
          msgPadding: msgPadding,
          msgStyle: msgStyle,
          titleStyle: titleStyle,
          icons: icon,
          positiveButtonText: positiveButtonText,
          negativeButtonText: negativeButtonText,
          positiveButtonClick: positiveButtonClick,
          negativeButtonClick: negativeButtonClick,
        );
      },
    );
  }

  void hideLoading(BuildContext context) {
    if (_isLoaderShown) {
      Navigator.of(context, rootNavigator: true).pop();
      _isLoaderShown = false;
    }
  }

  void hideKeyboard() {
    context.hideKeyboard();
  }

  @override
  void dispose() {
    hideLoading(context);
    super.dispose();
  }
}
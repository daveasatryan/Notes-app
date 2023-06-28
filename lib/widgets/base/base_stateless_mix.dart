import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/data/utilities/enums/dialog_icons.dart';
import 'package:product_app/data/utilities/storage/preferences_manager.dart';
import 'package:product_app/presentation/utilities/extentions/context_extention.dart';
import 'package:product_app/presentation/utilities/provider/user_provider.dart';
import 'package:product_app/presentation/utilities/routes/app_routes.dart';
import 'package:product_app/widgets/app_error_widget.dart';
import 'package:product_app/widgets/two_option_dialog_widget.dart';
import 'package:provider/provider.dart';

mixin BaseStatelessMixin on StatelessWidget {
  void showErrorDialog(
    BuildContext context, {
    required String msg,
    String? title,
    String? buttonText,
    Function? onPressed,
    bool isBarrierDismissible = true,
  }) {
    showDialog(
      context: context,
      barrierColor: context.colors.barrierColor,
      barrierDismissible: isBarrierDismissible,
      builder: (context) {
        return AppErrorWidget(
          title: title,
          buttonText: buttonText,
          message: msg,
          onPressed: () {
            onPressed?.call();
          },
        );
      },
    );
  }

  void showLogoutDialog(
    BuildContext context, {
    required String msg,
    String? title,
    Function? onPressed,
  }) {
    showDialog(
      context: context,
      barrierColor: context.colors.barrierColor,
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

  void showTwoOptionDialog(
    BuildContext context, {
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
    showDialog(
      context: context,
      barrierColor: context.colors.barrierColor,
      barrierDismissible: false,
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
}
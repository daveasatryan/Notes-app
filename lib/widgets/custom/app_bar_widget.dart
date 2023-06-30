import 'package:flutter/material.dart';
import 'package:product_app/presentation/utilities/extentions/context_extention.dart';
import 'package:product_app/presentation/utilities/typography/text_theme.dart';
import 'package:product_app/widgets/base/base_stateless_mix.dart';

class AppBarWidget extends StatelessWidget
    with BaseStatelessMixin
    implements PreferredSizeWidget {
  AppBarWidget(
      {required this.title,
      required this.backgroundColor,
      this.centerTitle = true,
      this.titleStyle,
      this.hasBack = false,
      this.showLogOut = false,
      this.logOut,
      super.key});
  final bool? centerTitle;
  final bool hasBack;
  final bool? showLogOut;
  final Color backgroundColor;
  final String title;
  final TextStyle? titleStyle;
  final Function()? logOut;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        showLogOut == true
            ? InkWell(
                onTap: () => logOut?.call(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    context.strings.log_out,
                    style: titleStyle ??
                        context.fonts.latoLight.copyWith(
                          color: context.colors.barrierColor,
                          fontSize: 18,
                        ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
      leading: hasBack
          ? InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back, color: context.colors.black45Color))
          : const SizedBox(),
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      elevation: 0,
      title: Text(
        title,
        style: titleStyle ??
            context.fonts.latoRegular.copyWith(
              color: context.colors.barrierColor,
              fontSize: 18,
            ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(75);
}

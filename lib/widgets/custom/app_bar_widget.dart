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
      super.key});
  final bool? centerTitle;
  final bool hasBack;
  final Color backgroundColor;
  final String title;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
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

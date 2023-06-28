import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_app/presentation/utilities/extentions/context_extention.dart';

/// [Widget] that used to show loading state through whole app
class AppLoadingWidget extends StatelessWidget {
  /// Default constructor. Able to pass [CircularProgressIndicator]
  /// color by key [color]
  const AppLoadingWidget({
    super.key,
    this.color,
  });

  /// Color of [CircularProgressIndicator]
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(
        radius: 30.sp,
        color: context.colors.whiteColor,
      ),
    );
  }
}
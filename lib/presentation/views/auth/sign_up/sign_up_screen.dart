import 'package:flutter/material.dart';
import 'package:product_app/presentation/utilities/extentions/context_extention.dart';
import 'package:product_app/presentation/utilities/typography/text_theme.dart';
import 'package:product_app/widgets/base/base_state.dart';
import 'package:product_app/widgets/custom/app_bar_widget.dart';
import 'package:product_app/widgets/custom/custom_button.dart';
import 'package:product_app/widgets/custom/custom_text_filed.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> with BaseStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.whiteColor,
      appBar: AppBarWidget(
        hasBack: true,
        backgroundColor: colors.whiteColor,
        title: context.strings.sign_up,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: sizes.width * .9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              CustomTextField(
                style: fonts.latoBold.copyWith(fontSize: 16),
                hint: context.strings.email_hint,
                labelText: context.strings.email_lable,
                labelStyle: context.fonts.latoRegular,
                fillColor: colors.whiteColor,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                isPasswordField: true,
                style: fonts.latoBold.copyWith(fontSize: 16),
                hint: context.strings.password_hint,
                labelText: context.strings.password_lable,
                labelStyle: context.fonts.latoRegular,
                fillColor: colors.whiteColor,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                style: fonts.latoBold.copyWith(fontSize: 16),
                hint: context.strings.confirm_password_hint,
                labelText: context.strings.confirm_password_lable,
                labelStyle: context.fonts.latoRegular,
                fillColor: colors.whiteColor,
              ),
              const SizedBox(height: 20),
              CustomButton(
                showBorder: true,
                borderColor: colors.borderTrueColor,
                color: colors.whiteColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                isColorFilled: false,
                onTap: () {
                  //join action
                },
                child: Text(
                  context.strings.create_account,
                  textAlign: TextAlign.center,
                  style: context.fonts.latoMedium
                      .copyWith(color: context.colors.borderTrueColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

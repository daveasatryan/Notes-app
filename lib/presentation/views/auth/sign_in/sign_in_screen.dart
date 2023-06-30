import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:product_app/data/utilities/bloc/bloc_factory.dart';
import 'package:product_app/presentation/utilities/extentions/context_extention.dart';
import 'package:product_app/presentation/utilities/routes/app_routes.dart';
import 'package:product_app/presentation/utilities/typography/text_theme.dart';
import 'package:product_app/presentation/views/auth/sign_in/bloc/sign_in_bloc.dart';
import 'package:product_app/presentation/views/auth/sign_in/bloc/sign_in_event.dart';
import 'package:product_app/presentation/views/auth/sign_in/bloc/sign_in_state.dart';
import 'package:product_app/widgets/base/base_state.dart';
import 'package:product_app/widgets/custom/app_bar_widget.dart';
import 'package:product_app/widgets/custom/custom_button.dart';
import 'package:product_app/widgets/custom/custom_text_filed.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> with BaseStateMixin {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.whiteColor,
      appBar: AppBarWidget(
        backgroundColor: colors.whiteColor,
        title: context.strings.sign_in,
      ),
      body: BlocProvider(
        create: (context) => context.read<BlocFactory>().create<SignInBloc>(),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: sizes.width * .9),
            child: BlocConsumer<SignInBloc, SignInState>(
              buildWhen: (previous, current) => current.buildWhen(),
              listenWhen: (previous, current) => current.listenWhen(),
              listener: (context, state) {
                state.whenOrNull(
                    success: () =>
                        AppRoutes.goTo(AppRoutes.mainRoute, hasBack: false),
                    loading: () => showLoading(),
                    error: (msg) {
                      return showErrorDialog(msg: msg);
                    });
              },
              builder: (context, state) => state.maybeWhen(
                orElse: () => Container(),
                signIn: () {
                  hideLoading(context);
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextField(
                        controller: emailController,
                        style: fonts.latoBold.copyWith(fontSize: 16),
                        hint: context.strings.email_hint,
                        labelText: context.strings.email_lable,
                        labelStyle: context.fonts.latoRegular,
                        fillColor: colors.whiteColor,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        controller: passwordController,
                        style: fonts.latoBold.copyWith(fontSize: 16),
                        hint: context.strings.password_hint,
                        labelText: context.strings.password_lable,
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
                          hideKeyboard();
                          context.read<SignInBloc>().add(
                                SignInEvent.signIn(
                                  emailController.text,
                                  passwordController.text,
                                ),
                              );
                        },
                        child: Text(
                          context.strings.join,
                          textAlign: TextAlign.center,
                          style: context.fonts.latoMedium
                              .copyWith(color: context.colors.borderTrueColor),
                        ),
                      ),
                      const SizedBox(height: 15),
                      CustomButton(
                        color: colors.borderTrueColor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 10,
                        ),
                        isColorFilled: false,
                        onTap: () => Get.toNamed(
                          AppRoutes.signUpRoute,
                        ),
                        child: Text(
                          context.strings.create_account,
                          textAlign: TextAlign.center,
                          style: context.fonts.latoMedium
                              .copyWith(color: context.colors.whiteColor),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/data/utilities/bloc/bloc_factory.dart';
import 'package:product_app/data/utilities/enums/validation_enum.dart';
import 'package:product_app/presentation/utilities/extentions/context_extention.dart';
import 'package:product_app/presentation/utilities/routes/app_routes.dart';
import 'package:product_app/presentation/utilities/typography/text_theme.dart';
import 'package:product_app/presentation/views/auth/sign_up/bloc/sign_up_bloc.dart';
import 'package:product_app/presentation/views/auth/sign_up/bloc/sign_up_event.dart';
import 'package:product_app/presentation/views/auth/sign_up/bloc/sign_up_state.dart';
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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool hidePassword = true;
  bool hidePasswordConfirm = true;
  Timer? _debounce;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.appSecondaryColor,
      appBar: AppBarWidget(
        hasBack: true,
        backgroundColor: colors.yellowMainColor,
        title: context.strings.sign_up,
        titleStyle: fonts.latoRegular.copyWith(
          fontSize: 30,
          color: colors.appSecondaryColor,
        ),
      ),
      body: BlocProvider(
        create: (context) => context.read<BlocFactory>().create<SignUpBloc>(),
        child: BlocConsumer<SignUpBloc, SignUpState>(
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
            signUp: (email, password, confirmPassword) {
              hideLoading(context);
              return Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: sizes.width * .9,
                    maxHeight: sizes.height * .4,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      CustomTextField(
                        onChanged: (value) {
                          if (_debounce?.isActive == true) _debounce?.cancel();
                          _debounce = Timer(
                            const Duration(milliseconds: 600),
                            () {
                              context.read<SignUpBloc>().add(
                                    SignUpEvent.validateEmail(value),
                                  );
                            },
                          );
                        },
                        errorText: email.errorMessage,
                        borderColor: colors.yellowMainColor,
                        controller: emailController,
                        style: fonts.latoBold.copyWith(fontSize: 16),
                        hint: context.strings.email_hint,
                        labelText: context.strings.email_lable,
                        labelStyle: context.fonts.latoMedium.copyWith(
                          fontSize: 18,
                        ),
                        fillColor: colors.whiteColor,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        togglePasswordVisibility: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                        onChanged: (value) {
                          if (_debounce?.isActive == true) _debounce?.cancel();
                          _debounce = Timer(
                            const Duration(milliseconds: 600),
                            () {
                              context.read<SignUpBloc>().add(
                                    SignUpEvent.validatePassword(value),
                                  );
                            },
                          );
                        },
                        errorText: password.errorMassagePassword,
                        borderColor: colors.yellowMainColor,
                        controller: passwordController,
                        isPasswordField: true,
                        hidePassword: hidePassword,
                        style: fonts.latoBold.copyWith(fontSize: 16),
                        hint: context.strings.password_hint,
                        labelText: context.strings.password_lable,
                        labelStyle: context.fonts.latoMedium.copyWith(
                          fontSize: 18,
                        ),
                        fillColor: colors.whiteColor,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        controller: confirmPasswordController,
                        togglePasswordVisibility: () {
                          setState(() {
                            hidePasswordConfirm = !hidePasswordConfirm;
                          });
                        },
                        onChanged: (value) {
                          if (_debounce?.isActive == true) _debounce?.cancel();
                          _debounce = Timer(
                            const Duration(milliseconds: 600),
                            () {
                              context.read<SignUpBloc>().add(
                                  SignUpEvent.validateConfirmPassword(
                                      value, passwordController.text));
                            },
                          );
                        },
                        errorText: confirmPassword.errorMassagePassword,
                        isPasswordField: true,
                        hidePassword: hidePasswordConfirm,
                        borderColor: colors.yellowMainColor,
                        style: fonts.latoBold.copyWith(fontSize: 16),
                        hint: context.strings.confirm_password_hint,
                        labelText: context.strings.confirm_password_lable,
                        labelStyle: context.fonts.latoMedium.copyWith(
                          fontSize: 18,
                        ),
                        fillColor: colors.whiteColor,
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        showBorder: true,
                        borderColor: colors.yellowMainColor,
                        color: colors.whiteColor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 10,
                        ),
                        isColorFilled: false,
                        onTap: () {
                          hideKeyboard();
                          context.read<SignUpBloc>().add(
                                SignUpEvent.signUp(
                                  emailController.text,
                                  passwordController.text,
                                  confirmPasswordController.text,
                                ),
                              );
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
              );
            },
          ),
        ),
      ),
    );
  }
}

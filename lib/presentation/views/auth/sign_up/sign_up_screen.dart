import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/data/utilities/bloc/bloc_factory.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.whiteColor,
      appBar: AppBarWidget(
        hasBack: true,
        backgroundColor: colors.whiteColor,
        title: context.strings.sign_up,
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
            signUp: () {
              hideLoading(context);
              return Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: sizes.width * .9),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
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
                           hideKeyboard();
                          context.read<SignUpBloc>().add(
                                SignUpEvent.signUp(
                                  emailController.text,
                                  passwordController.text,
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

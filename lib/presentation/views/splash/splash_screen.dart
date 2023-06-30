import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:product_app/data/utilities/bloc/bloc_factory.dart';
import 'package:product_app/presentation/utilities/extentions/context_extention.dart';
import 'package:product_app/presentation/utilities/routes/app_routes.dart';
import 'package:product_app/presentation/utilities/typography/text_theme.dart';
import 'package:product_app/presentation/views/splash/bloc/splash_bloc.dart';
import 'package:product_app/presentation/views/splash/bloc/splash_event.dart';
import 'package:product_app/presentation/views/splash/bloc/splash_state.dart';
import 'package:product_app/widgets/base/base_state.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with BaseStateMixin, TickerProviderStateMixin {
  late AnimationController? animateController;
  @override
  void initState() {
    animateController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    super.initState();
  }

  @override
  void dispose() {
    animateController?.dispose();
    super.dispose();
  }

  void navigateToScreens() {
    Timer(
      const Duration(seconds: 2),
      () {
        AppRoutes.goTo(AppRoutes.signInRoute, hasBack: false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    hideLoading(context);
    return BlocProvider(
      create: (context) => context.read<BlocFactory>().create<SplashBloc>()
        ..add(const SplashEvent.getUser()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          state.whenOrNull(
            success: () => navigateToScreens(),
            error: (msg) => showErrorDialog(msg: msg),
          );
        },
        child: Scaffold(
          backgroundColor: context.colors.yellowMainColor,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  context.strings.welcome_notes_app,
                  style: fonts.latoRegular
                      .copyWith(fontSize: 30, color: colors.whiteYellowColor),
                ),
                SpinKitSpinningLines(
                  itemCount: 3,
                  color: colors.whiteYellowColor,
                  controller: animateController,
                  size: context.sizes.width * .56,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> checkForPermission() async {
    await Permission.location.request();
    navigateToScreens();
  }
}

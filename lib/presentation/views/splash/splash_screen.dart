import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:product_app/data/utilities/bloc/bloc_factory.dart';
import 'package:product_app/presentation/utilities/extentions/context_extention.dart';
import 'package:product_app/presentation/utilities/routes/app_routes.dart';
import 'package:product_app/presentation/views/splash/bloc/splash_bloc.dart';
import 'package:product_app/presentation/views/splash/bloc/splash_event.dart';
import 'package:product_app/presentation/views/splash/bloc/splash_state.dart';
import 'package:product_app/widgets/base/base_state.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with BaseStateMixin {
  void navigateToScreens() {
    Timer(
      const Duration(seconds: 1),
      () {
        AppRoutes.goTo(AppRoutes.signInRoute, hasBack: false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => context.read<BlocFactory>().create<SplashBloc>()
        ..add(const SplashEvent.getUser()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          state.whenOrNull(
            success: () => navigateToScreens(),

            // error: (msg) async => await checkForPermission(),
          );
        },
        child: Container(
          decoration: BoxDecoration(color: context.colors.greenScreenColor),
          child: Center(
            child: SizedBox(
              width: context.sizes.width * .56,
              child: const Icon(Icons.hail),
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

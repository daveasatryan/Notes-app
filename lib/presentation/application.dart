import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:product_app/data/utilities/bloc/bloc_factory.dart';
import 'package:product_app/data/utilities/sl/service_locator_factory.dart';
import 'package:product_app/generated/l10n.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:product_app/presentation/utilities/extentions/context_extention.dart';
import 'package:product_app/presentation/utilities/l10n/locale_controller.dart';
import 'package:product_app/presentation/utilities/provider/user_provider.dart';
import 'package:product_app/presentation/utilities/routes/app_routes.dart';
import 'package:product_app/presentation/views/splash/splash_screen.dart';
import 'package:provider/provider.dart';

class Application extends StatefulWidget {
  const Application({
    Key? key,
  }) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => BlocFactory(getIt: GetIt.instance),
        ),
         Provider(
          create: (context) => SlFactory(getIt: GetIt.instance),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        )
      ],
      child: Builder(
        builder: (context) {
          return ScreenUtilInit(
            designSize: const Size(375, 813),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, _) {
              return GetMaterialApp(
                debugShowCheckedModeBanner: false,
                defaultTransition: Transition.noTransition,
                transitionDuration: const Duration(seconds: 0),
                initialRoute: AppRoutes.splashRoute,
                 locale:
                    context.read<SlFactory>().get<LocaleController>().locale,
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                onUnknownRoute: (settings) =>
                    MaterialPageRoute(builder: (_) => const SplashScreen()),
                getPages: AppRoutes.rootRoutes,
                navigatorKey: Get.nestedKey(AppRoutes.rootNavigationKey),
               
                theme: ThemeData(
                  fontFamily: 'Lato',
                  primaryColor: context.colors.mainAppColor,
                  highlightColor: context.colors.transparent,
                  splashColor: context.colors.transparent,
                  checkboxTheme: CheckboxThemeData(
                    checkColor: MaterialStateProperty.all(
                      context.colors.mainAppColor,
                    ),
                    fillColor:
                        MaterialStateProperty.all(context.colors.whiteColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        5.sp,
                      ),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => BorderSide(
                        width: 2,
                        color: context.colors.mainAppColor,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

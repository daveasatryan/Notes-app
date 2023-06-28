import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:product_app/data/utilities/injection/injection.dart';
import 'package:product_app/data/utilities/storage/preferences_manager.dart';
import 'package:product_app/presentation/application.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      await configureDependencies();
      await PreferencesManager.initPreferences();
      runApp(const Application());
      //     // FlutterError.onError = (errorDetails) {
      //     //   FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
      //     // };
      //     // // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
      //     // PlatformDispatcher.instance.onError = (error, stack) {
      //     //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      //     //   return true;
      //     // };

      //     // final GoogleMapsFlutterPlatform mapsImplementation = GoogleMapsFlutterPlatform.instance;
      //     // if (mapsImplementation is GoogleMapsFlutterAndroid) {
      //     //   mapsImplementation.useAndroidViewSurface = true;
      //     // }
      //     // await SystemChromse.setEnabledSystemUIMode(
      //     //   SystemUiMode.manual,
      //     //   overlays: [
      //     //     SystemUiOverlay.bottom,
      //     //     SystemUiOverlay.top,
      //     //   ],
      //     // );
      //   //  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    },
    (error, stackTrace) {
      print("main error $error");
    },
  );
}

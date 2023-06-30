import 'package:get/get.dart';
import 'package:product_app/presentation/views/auth/forget_password/forget_password_screen.dart';
import 'package:product_app/presentation/views/auth/forget_password_enter_email/forget_password_enter_email.dart';
import 'package:product_app/presentation/views/auth/profile_screen/profile_screen.dart';
import 'package:product_app/presentation/views/auth/sign_in/sign_in_screen.dart';
import 'package:product_app/presentation/views/auth/sign_up/sign_up_screen.dart';
import 'package:product_app/presentation/views/edit_profile_screen/edit_profile_screen.dart';
import 'package:product_app/presentation/views/main_screen/main_screen.dart';
import 'package:product_app/presentation/views/note_screen/note_screen.dart';
import 'package:product_app/presentation/views/splash/splash_screen.dart';

class AppRoutes {
  // root navigation routes
  static const splashRoute = '/';
  static const signInRoute = '/sign-in-screen';
  static const signUpRoute = '/sign-up-screen';
  static const forgetPasswordRoute = '/forgot-password';
  static const forgetPasswordEnterEmailRoute = '/forget-password-enter-email';
  static const editProfileRoute = '/edit-profile';
  static const mainRoute = '/main';
  static const signUpStores = '/sign-up-stores';

  // main navigation routes
  static const profileRoute = '$mainRoute/profile';
  static const noteRoute = '$mainRoute/note';

  static const rootNavigationKey = 0;
  static const mainNavigationKey = 1;

  static final List<GetPage> _rootRoutes = [
    GetPage(
      name: splashRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: signInRoute,
      page: () => const SignInScreen(),
    ),
    GetPage(
      name: signUpRoute,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: forgetPasswordRoute,
      page: () => const ForgetPasswordScreen(),
    ),
    GetPage(
      name: forgetPasswordEnterEmailRoute,
      page: () => const ForgetPasswordEnterEmail(),
    ),
    GetPage(
      name: editProfileRoute,
      page: () => const EditProfileScreen(),
    ),
    GetPage(
      name: mainRoute,
      page: () => const MainScreen(),
    ),
  ];

  static final List<GetPage> _mainRoutes = [
    GetPage(
      name: profileRoute,
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: noteRoute,
      page: () => const NoteScreen(),
    ),
  ];
  static List<GetPage> get rootRoutes => _rootRoutes;

  static List<GetPage> get mainRoutes => _mainRoutes;

  static Future<T?>? goTo<T>(
    String page, {
    bool hasBack = true,
    dynamic arguments,
    int? id = rootNavigationKey,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
  }) {
    if (hasBack) {
      return Get.toNamed(
        page,
        arguments: arguments,
        id: id,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
      );
    }

    return Get.offAllNamed(
      page,
      arguments: arguments,
      parameters: parameters,
      id: id,
    );
  }

  static Future<T?>? goToNested<T>(
    String page, {
    bool hasBack = true,
    dynamic arguments,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
  }) =>
      goTo(
        page,
        hasBack: hasBack,
        arguments: arguments,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        id: mainNavigationKey,
      );

  static void back<T>({
    T? result,
    bool closeOverlays = false,
    bool canPop = true,
    int? id = rootNavigationKey,
  }) {
    Get.back(
      result: result,
      closeOverlays: closeOverlays,
      canPop: canPop,
      id: id,
    );
  }

  static void backNested<T>({
    T? result,
    bool closeOverlays = false,
    bool canPop = true,
  }) =>
      back(
        result: result,
        closeOverlays: closeOverlays,
        canPop: canPop,
        id: mainNavigationKey,
      );
}

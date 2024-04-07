import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();

  /// Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// Function to show relevant screen
  screenRedirect() async {
    // Local Storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }
  /*  --------- Email & Password sign-in ------ */
  /// [EmailAuthentication] - SignIn
  /// [EmailAuthentication] - SignUp
  /// [ReAuthentication] - ReAuthenticate User
  /// [EmailVerification] - Mail Verification
  /// [EmailVerification] - Password Reset
  /*  --------- Federated identity & social sign-in ------ */
  /// [GoogleAuthentication] - GOOGLE
  /// [FacebookAuthentication] - FACEBOOK
  /*  --------- ./end Federated identity & social sign-in ------ */
  /// [LogoutUser] = Valid for any authentication
  /// DELETE USER - Remove user Auth and Firestore account
}

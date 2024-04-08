import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

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
  /// [EmailAuthentication] - SignUp (Register)
  Future<UserCredential?> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        throw 'The account already exists for that email.';
      }
    } catch (e) {
      throw 'An error occurred';
    } finally {
      return null;
    }
  }

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

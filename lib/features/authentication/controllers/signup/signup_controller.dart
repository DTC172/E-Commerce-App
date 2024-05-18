import 'package:e_commerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app/data/repositories/user/user_repository.dart';
import 'package:e_commerce_app/features/authentication/models/user_model.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/network_manager.dart';
import 'package:e_commerce_app/utils/popups/full_screen_loader.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs;
  final privatePolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  ///  -- SIGNUP
  Future<void> signup() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information ...', TImages.verifyIllustration);
      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }
      // Form Validation
      if (!signupFormKey.currentState!.validate()) {
        return;
      }
      // Provacy Policy Check
      if (!privatePolicy.value) {
        TLoaders.warningSnackBar(
            title: 'Accept the Privacy Policy and Terms of Use',
            message:
                'In order to proceed, you must accept the terms and conditions');
        return;
      }
      // Register user in Firebase Authentication & Save User Data in Firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());
      // Save Authenticated user data in the Firebase Firestore
      final newUser = UserModel(
        id: userCredential!.user!.uid,
        username: username.text.trim(),
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);
      // Show Success Message
      TLoaders.successSnackBar(
          title: 'Congratulations!',
          message: 'Your account has been created! Verify email to continue.');
      // Move to Verify Email Screen
      Get.to(() => VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      // Show some error
      TLoaders.errorSnackBar(
          title: 'An error occurred. Please try again', message: e.toString());
    } finally {
      // Remove Loader
      TFullScreenLoader.stopLoading();
    }
  }
}

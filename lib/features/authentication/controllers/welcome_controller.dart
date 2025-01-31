import 'package:erba_coders/features/authentication/screens/login/login.dart';
import 'package:erba_coders/features/authentication/screens/signup/signup.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  static WelcomeController get instance => Get.find();

  void goToLogin() {
    Get.to(() => const LoginScreen());
  }

  void goToSignup() {
    Get.to(() => const SignupScreen());
  }
}
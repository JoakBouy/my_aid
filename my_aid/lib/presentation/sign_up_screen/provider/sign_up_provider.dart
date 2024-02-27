import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:aid/core/app_export.dart';
import 'package:aid/presentation/sign_up_screen/models/sign_up_model.dart';

/// A provider class for the SignUpScreen.
///
/// This provider manages the state of the SignUpScreen, including the
/// current signUpModelObj

// ignore_for_file: must_be_immutable
class SignUpProvider extends ChangeNotifier {
  TextEditingController nameEditTextController = TextEditingController();
  TextEditingController emailEditTextController = TextEditingController();
  TextEditingController passwordEditTextController = TextEditingController();
  bool isShowPassword = true;
  bool agreeCheckBox = false;
  SignUpModel signUpModelObj = SignUpModel();

  @override
  void dispose() {
    super.dispose();
    nameEditTextController.dispose();
    emailEditTextController.dispose();
    passwordEditTextController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changeCheckBox1(bool value) {
    agreeCheckBox = value;
    notifyListeners();
  }

  Future<void> signUp(BuildContext context) async {
    try {
      final FirebaseAuth _auth = FirebaseAuth.instance;
      final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: emailEditTextController.text,
        password: passwordEditTextController.text,
      );

      // Signed in
      final User? user = userCredential.user;
      if (user != null) {
        // Update the user's display name
        await user.updateProfile(displayName: nameEditTextController.text);
        // Show success dialog
        onTapSignUpButton(context);
      }
    } catch (e) {
      // Show error message
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
  
  void onTapSignUpButton(BuildContext context) {}
}
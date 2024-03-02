import 'package:flutter/material.dart';
import 'package:aid/core/app_export.dart';
import 'package:aid/presentation/sign_up_success_dialog/models/sign_up_success_model.dart';

/// A provider class for the SignUpSuccessDialog.
///
/// This provider manages the state of the SignUpSuccessDialog, including the
/// current signUpSuccessModelObj

// ignore_for_file: must_be_immutable
class SignUpSuccessProvider extends ChangeNotifier {
  SignUpSuccessModel signUpSuccessModelObj = SignUpSuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}

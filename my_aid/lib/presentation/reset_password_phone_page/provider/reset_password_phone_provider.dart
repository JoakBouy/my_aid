import 'package:flutter/material.dart';
import 'package:aid/core/app_export.dart';
import 'package:aid/presentation/reset_password_phone_page/models/reset_password_phone_model.dart';

/// A provider class for the ResetPasswordPhonePage.
///
/// This provider manages the state of the ResetPasswordPhonePage, including the
/// current resetPasswordPhoneModelObj

// ignore_for_file: must_be_immutable
class ResetPasswordPhoneProvider extends ChangeNotifier {
  TextEditingController mobileNoController = TextEditingController();

  ResetPasswordPhoneModel resetPasswordPhoneModelObj =
      ResetPasswordPhoneModel();

  @override
  void dispose() {
    super.dispose();
    mobileNoController.dispose();
  }
}

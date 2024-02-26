import 'package:flutter/material.dart';
import 'package:aid/core/app_export.dart';
import 'package:aid/presentation/reset_password_email_tab_container_screen/models/reset_password_email_tab_container_model.dart';

/// A provider class for the ResetPasswordEmailTabContainerScreen.
///
/// This provider manages the state of the ResetPasswordEmailTabContainerScreen, including the
/// current resetPasswordEmailTabContainerModelObj
class ResetPasswordEmailTabContainerProvider extends ChangeNotifier {
  ResetPasswordEmailTabContainerModel resetPasswordEmailTabContainerModelObj =
      ResetPasswordEmailTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}

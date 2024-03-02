import 'package:flutter/material.dart';
import 'package:aid/core/app_export.dart';
import 'package:aid/presentation/profile_page/models/profile_model.dart';
import '../models/profilelistsection_item_model.dart';

/// A provider class for the ProfilePage.
///
/// This provider manages the state of the ProfilePage, including the
/// current profileModelObj

// ignore_for_file: must_be_immutable
class ProfileProvider extends ChangeNotifier {
  ProfileModel profileModelObj = ProfileModel();

  @override
  void dispose() {
    super.dispose();
  }
}

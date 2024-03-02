import 'package:flutter/material.dart';
import 'package:aid/core/app_export.dart';
import 'package:aid/presentation/find_doctors_screen/models/find_doctors_model.dart';
import '../models/finddoctors_item_model.dart';
import '../models/doctors_item_model.dart';

/// A provider class for the FindDoctorsScreen.
///
/// This provider manages the state of the FindDoctorsScreen, including the
/// current findDoctorsModelObj

// ignore_for_file: must_be_immutable
class FindDoctorsProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  TextEditingController chardiologistController = TextEditingController();

  FindDoctorsModel findDoctorsModelObj = FindDoctorsModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
    chardiologistController.dispose();
  }
}

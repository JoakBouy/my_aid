import 'package:flutter/material.dart';
import 'package:aid/core/app_export.dart';
import 'package:aid/presentation/doctor_detail_screen/models/doctor_detail_model.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../models/am_item_model.dart';

/// A provider class for the DoctorDetailScreen.
///
/// This provider manages the state of the DoctorDetailScreen, including the
/// current doctorDetailModelObj

// ignore_for_file: must_be_immutable
class DoctorDetailProvider extends ChangeNotifier {
  DoctorDetailModel doctorDetailModelObj = DoctorDetailModel();

  DateTime? selectedDatesFromCalendar1;

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    doctorDetailModelObj.amItemList.forEach((element) {
      element.isSelected = false;
    });
    doctorDetailModelObj.amItemList[index].isSelected = value;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:aid/core/app_export.dart';
import 'package:aid/presentation/booking_doctor_screen/models/booking_doctor_model.dart';

/// A provider class for the BookingDoctorScreen.
///
/// This provider manages the state of the BookingDoctorScreen, including the
/// current bookingDoctorModelObj

// ignore_for_file: must_be_immutable
class BookingDoctorProvider extends ChangeNotifier {
  BookingDoctorModel bookingDoctorModelObj = BookingDoctorModel();

  @override
  void dispose() {
    super.dispose();
  }
}

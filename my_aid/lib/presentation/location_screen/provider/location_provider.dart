import 'package:flutter/material.dart';
import 'package:aid/core/app_export.dart';
import 'package:aid/presentation/location_screen/models/location_model.dart';

/// A provider class for the LocationScreen.
///
/// This provider manages the state of the LocationScreen, including the
/// current locationModelObj
class LocationProvider extends ChangeNotifier {
  LocationModel locationModelObj = LocationModel();

  @override
  void dispose() {
    super.dispose();
  }
}

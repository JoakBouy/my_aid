import '../../../core/app_export.dart';

/// This class is used in the [profilelistsection_item_widget] screen.
class ProfilelistsectionItemModel {
  ProfilelistsectionItemModel({
    this.heartrate,
    this.heartRate,
    this.bpm,
    this.id,
  }) {
    heartrate = heartrate ?? ImageConstant.imgTelevision;
    heartRate = heartRate ?? "Heart rate";
    bpm = bpm ?? "215bpm";
    id = id ?? "";
  }

  String? heartrate;

  String? heartRate;

  String? bpm;

  String? id;
}

import '../../../core/app_export.dart';

/// This class is used in the [schedule_item_widget] screen.
class ScheduleItemModel {
  ScheduleItemModel({
    this.doctorName,
    this.doctorDepartment,
    this.doctorImage,
    this.date,
    this.time,
    this.status,
    this.id,
  }) {
    doctorName = doctorName ?? "Dr. Marcus Horizon";
    doctorDepartment = doctorDepartment ?? "Chardiologist";
    doctorImage = doctorImage ?? ImageConstant.imgClose40x40;
    date = date ?? "26/06/2022";
    time = time ?? "10:30 AM";
    status = status ?? "Confirmed";
    id = id ?? "";
  }

  String? doctorName;

  String? doctorDepartment;

  String? doctorImage;

  String? date;

  String? time;

  String? status;

  String? id;
}

import 'dart:core';

import '../../../core/app_export.dart';

/// This class is used in the [schedule_item_widget] screen.
class ScheduleItemModel {
  String? doctorName;
  String? doctorDepartment;
  String? doctorImage;
  String? date;
  String? time;
  String? status;
  String? id;

  ScheduleItemModel({
    this.doctorName,
    this.doctorDepartment,
    this.doctorImage,
    this.date,
    this.time,
    this.status,
    this.id,
  });

  ScheduleItemModel.fromMap(Map<String, dynamic> data) {
    doctorName = data['doctorName'];
    doctorDepartment = data['doctorDepartment'];
    doctorImage = data['doctorImage'];
    date = data['date'];
    time = data['time'];
    status = data['status'];
    id = data['id'];
  }

  Map<String, dynamic> toMap() {
    return {
      'doctorName': doctorName,
      'doctorDepartment': doctorDepartment,
      'doctorImage': doctorImage,
      'date': date,
      'time': time,
      'status': status,
      'id': id,
    };
  }
}
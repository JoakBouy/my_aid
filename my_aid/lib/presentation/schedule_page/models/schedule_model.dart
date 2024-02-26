import '../../../core/app_export.dart';
import 'schedule_item_model.dart';

class ScheduleModel {
  List<ScheduleItemModel> scheduleItemList = [
    ScheduleItemModel(
        doctorName: "Dr. Marcus Horizon",
        doctorDepartment: "Chardiologist",
        doctorImage: ImageConstant.imgClose40x40,
        date: "26/06/2022",
        time: "10:30 AM",
        status: "Confirmed"),
    ScheduleItemModel(
        doctorName: "Dr. Alysa Hana",
        doctorDepartment: "Psikeater",
        doctorImage: ImageConstant.imgPlay)
  ];
}

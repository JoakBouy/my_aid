import '../../../core/app_export.dart';
import 'finddoctors_item_model.dart';
import 'doctors_item_model.dart';

class FindDoctorsModel {
  List<FinddoctorsItemModel> finddoctorsItemList = [
    FinddoctorsItemModel(
        general: ImageConstant.imgIconDoctor, general1: "General"),
    FinddoctorsItemModel(
        general: ImageConstant.imgIconLungs, general1: "Lungs"),
    FinddoctorsItemModel(
        general: ImageConstant.imgIconDentist, general1: "Dentist"),
    FinddoctorsItemModel(
        general: ImageConstant.imgIconPsychiatrist, general1: "Psychiatrist"),
    FinddoctorsItemModel(
        general: ImageConstant.imgSearch, general1: "Covid-19"),
    FinddoctorsItemModel(
        general: ImageConstant.imgIconSyringe, general1: "Surgeon"),
    FinddoctorsItemModel(
        general: ImageConstant.imgIconCardiologist, general1: "Cardio")
  ];

  List<DoctorsItemModel> doctorsItemList = [
    DoctorsItemModel(
        drMarcus: ImageConstant.imgEllipse8864x64, drMarcus1: "Dr. Marcus"),
    DoctorsItemModel(
        drMarcus: ImageConstant.imgEllipse881, drMarcus1: "Dr. Maria"),
    DoctorsItemModel(
        drMarcus: ImageConstant.imgEllipse882, drMarcus1: "Dr. Stevi"),
    DoctorsItemModel(
        drMarcus: ImageConstant.imgRectangle961, drMarcus1: "Dr. Luke")
  ];
}

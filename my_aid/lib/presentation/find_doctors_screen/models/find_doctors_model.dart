import '../../../core/app_export.dart';
import 'finddoctors_item_model.dart';
import 'doctors_item_model.dart';

class FindDoctorsModel {
  List<FinddoctorsItemModel> finddoctorsItemList = [
    FinddoctorsItemModel(
        image: ImageConstant.imgIconDoctor, name: "General"),
    FinddoctorsItemModel(
        image: ImageConstant.imgIconLungs, name: "Lungs"),
    FinddoctorsItemModel(
        image: ImageConstant.imgIconDentist, name: "Dentist"),
    FinddoctorsItemModel(
        image: ImageConstant.imgIconPsychiatrist, name: "Psychiatrist"),
    FinddoctorsItemModel(
        image: ImageConstant.imgSearch, name: "Covid-19"),
    FinddoctorsItemModel(
        image: ImageConstant.imgIconSyringe, name: "Surgeon"),
    FinddoctorsItemModel(
        image: ImageConstant.imgIconCardiologist, name: "Cardio")
  ];

  List<DoctorsItemModel> doctorsItemList = [
    DoctorsItemModel(
        image: ImageConstant.imgEllipse8864x64, name: "Dr. Marcus"),
    DoctorsItemModel(
        image: ImageConstant.imgEllipse881, name: "Dr. Maria"),
    DoctorsItemModel(
        image: ImageConstant.imgEllipse882, name: "Dr. Stevi"),
    DoctorsItemModel(
        image: ImageConstant.imgRectangle961, name: "Dr. Luke")
  ];
}

import '../../../core/app_export.dart';
import 'categories_item_model.dart';
import 'home_item_model.dart';

class HomeModel {
  List<CategoriesItemModel> categoriesItemList = [
    CategoriesItemModel(
        ambulance: ImageConstant.imgIconAmbulance, ambulance1: "Ambulance"),
    CategoriesItemModel(
        ambulance: ImageConstant.imgIconDoctor, ambulance1: "Doctor"),
    CategoriesItemModel(
        ambulance: ImageConstant.imgIconPharmacy, ambulance1: "Pharmacy"),
    CategoriesItemModel(
        ambulance: ImageConstant.imgIconHospital, ambulance1: "Hospital")
  ];

  List<HomeItemModel> homeItemList = [
    HomeItemModel(
        circleImage: ImageConstant.imgEllipse88,
        fortySeven: "4.7",
        drMarcusHorizon: "Dr. Marcus Horizon",
        chardiologist: "Chardiologist",
        distance: "800m away"),
    HomeItemModel(
        circleImage: ImageConstant.imgEllipse89,
        fortySeven: "4.7",
        drMarcusHorizon: "Dr. Maria Elena",
        chardiologist: "Chardiologist",
        distance: "800m away"),
    HomeItemModel(
        circleImage: ImageConstant.imgEllipse88,
        fortySeven: "4.7",
        drMarcusHorizon: "Dr. Marcus Horizon",
        chardiologist: "Chardiologist",
        distance: "800m away"),
    HomeItemModel(
        circleImage: ImageConstant.imgEllipse89,
        fortySeven: "4.7",
        drMarcusHorizon: "Dr. Maria Elena",
        chardiologist: "Chardiologist",
        distance: "800m away")
  ];
}

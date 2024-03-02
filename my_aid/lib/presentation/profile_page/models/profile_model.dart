import '../../../core/app_export.dart';
import 'profilelistsection_item_model.dart';

class ProfileModel {
  List<ProfilelistsectionItemModel> profilelistsectionItemList = [
    ProfilelistsectionItemModel(
        heartrate: ImageConstant.imgTelevision,
        heartRate: "Heart rate",
        bpm: "215bpm"),
    ProfilelistsectionItemModel(
        heartrate: ImageConstant.imgSettingsWhiteA700,
        heartRate: "Calories",
        bpm: "756cal"),
    ProfilelistsectionItemModel(
        heartrate: ImageConstant.imgThumbsUpWhiteA700,
        heartRate: "Weight",
        bpm: "103lbs")
  ];
}

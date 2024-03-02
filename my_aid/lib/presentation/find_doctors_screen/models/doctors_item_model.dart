import '../../../core/app_export.dart';

/// This class is used in the [doctors_item_widget] screen.
class DoctorsItemModel {
  DoctorsItemModel({
    this.image,
    this.name,
    this.id,
  }) {
    image = image ?? ImageConstant.imgEllipse8864x64;
    name = name ?? "Dr. Marcus";
    id = id ?? "";
  }

  String? image;

  String? name;

  String? id;
}

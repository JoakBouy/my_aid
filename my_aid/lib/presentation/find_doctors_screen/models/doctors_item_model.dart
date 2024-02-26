import '../../../core/app_export.dart';

/// This class is used in the [doctors_item_widget] screen.
class DoctorsItemModel {
  DoctorsItemModel({
    this.drMarcus,
    this.drMarcus1,
    this.id,
  }) {
    drMarcus = drMarcus ?? ImageConstant.imgEllipse8864x64;
    drMarcus1 = drMarcus1 ?? "Dr. Marcus";
    id = id ?? "";
  }

  String? drMarcus;

  String? drMarcus1;

  String? id;
}

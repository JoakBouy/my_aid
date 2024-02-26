import '../../../core/app_export.dart';

/// This class is used in the [finddoctors_item_widget] screen.
class FinddoctorsItemModel {
  FinddoctorsItemModel({
    this.general,
    this.general1,
    this.id,
  }) {
    general = general ?? ImageConstant.imgIconDoctor;
    general1 = general1 ?? "General";
    id = id ?? "";
  }

  String? general;

  String? general1;

  String? id;
}

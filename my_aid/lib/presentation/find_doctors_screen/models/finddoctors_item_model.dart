import '../../../core/app_export.dart';

/// This class is used in the [finddoctors_item_widget] screen.
class FinddoctorsItemModel {
  FinddoctorsItemModel({
    this.image,
    this.name,
    this.id,
  }) {
    image = image ?? ImageConstant.imgIconDoctor;
    name = name ?? "General";
    id = id ?? "";
  }

  String? image;

  String? name;

  String? id;
}

  class AmItemModel {
    final String id;
    final String am;
    final bool isSelected;

    AmItemModel({
      required this.id,
      required this.am,
      required this.isSelected,
    });
  }
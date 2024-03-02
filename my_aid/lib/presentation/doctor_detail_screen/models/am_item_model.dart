import '../../../core/app_export.dart';

/// This class is used in the [am_item_widget] screen.
class AmItemModel {
  String? id;
  String am;
  bool isSelected;

  AmItemModel({this.id, required this.am, this.isSelected = false});
}

import '../../../core/app_export.dart';

/// This class is used in the [chipview_item_widget] screen.
class ChipviewItemModel {
  ChipviewItemModel({
    this.covidNineteen,
    this.isSelected,
  }) {
    covidNineteen = covidNineteen ?? "Covid-19";
    isSelected = isSelected ?? false;
  }

  String? covidNineteen;

  bool? isSelected;
}

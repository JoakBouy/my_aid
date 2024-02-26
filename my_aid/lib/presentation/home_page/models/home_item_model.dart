import '../../../core/app_export.dart';

/// This class is used in the [home_item_widget] screen.
class HomeItemModel {
  HomeItemModel({
    this.circleImage,
    this.fortySeven,
    this.drMarcusHorizon,
    this.chardiologist,
    this.distance,
    this.id,
  }) {
    circleImage = circleImage ?? ImageConstant.imgEllipse88;
    fortySeven = fortySeven ?? "4.7";
    drMarcusHorizon = drMarcusHorizon ?? "Dr. Marcus Horizon";
    chardiologist = chardiologist ?? "Chardiologist";
    distance = distance ?? "800m away";
    id = id ?? "";
  }

  String? circleImage;

  String? fortySeven;

  String? drMarcusHorizon;

  String? chardiologist;

  String? distance;

  String? id;
}

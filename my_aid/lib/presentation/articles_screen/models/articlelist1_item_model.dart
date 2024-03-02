import '../../../core/app_export.dart';

/// This class is used in the [articlelist1_item_widget] screen.
class Articlelist1ItemModel {
  Articlelist1ItemModel({
    this.image,
    this.theHealthiest,
    this.jun,
    this.time,
    this.image1,
    this.id,
  }) {
    image = image ?? ImageConstant.imgUnsplash86rvjm9zowy;
    theHealthiest = theHealthiest ??
        "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist";
    jun = jun ?? "Jun 10, 2021 ";
    time = time ?? "5min read";
    image1 = image1 ?? ImageConstant.imgBookmark12x10;
    id = id ?? "";
  }

  String? image;

  String? theHealthiest;

  String? jun;

  String? time;

  String? image1;

  String? id;
}

import '../../../core/app_export.dart';

/// This class is used in the [articlelist_item_widget] screen.
class ArticlelistItemModel {
  ArticlelistItemModel({
    this.covidNineteen,
    this.covidNineteen1,
    this.comparingtheAstraZen,
    this.jun,
    this.time,
    this.id,
  }) {
    covidNineteen = covidNineteen ?? ImageConstant.imgRectangle460;
    covidNineteen1 = covidNineteen1 ?? "Covid-19";
    comparingtheAstraZen = comparingtheAstraZen ??
        "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines";
    jun = jun ?? "Jun 12, 2021";
    time = time ?? "6 min read";
    id = id ?? "";
  }

  String? covidNineteen;

  String? covidNineteen1;

  String? comparingtheAstraZen;

  String? jun;

  String? time;

  String? id;
}

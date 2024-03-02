import 'package:flutter/material.dart';
import 'package:aid/core/app_export.dart';
import 'package:aid/presentation/articles_screen/models/articles_model.dart';
import '../models/chipview_item_model.dart';
import '../models/articlelist_item_model.dart';
import '../models/articlelist1_item_model.dart';

/// A provider class for the ArticlesScreen.
///
/// This provider manages the state of the ArticlesScreen, including the
/// current articlesModelObj

// ignore_for_file: must_be_immutable
class ArticlesProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  ArticlesModel articlesModelObj = ArticlesModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    articlesModelObj.chipviewItemList.forEach((element) {
      element.isSelected = false;
    });
    articlesModelObj.chipviewItemList[index].isSelected = value;
    notifyListeners();
  }
}

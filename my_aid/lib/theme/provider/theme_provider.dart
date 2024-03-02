import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/pref_utils.dart';

class ThemeProvider extends ChangeNotifier {
  themeChange(String themeType) async {
    PrefUtils().setThemeData(themeType);
    notifyListeners();
  }
}

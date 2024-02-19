import 'dart:async';

import 'package:flutter/material.dart';
import 'package:aid/core/app_export.dart';
import 'package:aid/core/utils/navigator_service.dart';
import 'package:aid/widgets/custom_image_view.dart' as aid_custom_image_view;

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      NavigatorService.popAndPushNamed(AppRoutes.onboardingTwoScreen);
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              aid_custom_image_view.CustomImageView(
                imagePath: ImageConstant.imgVector,
                height: 130.v,
                width: 117.h,
              ),
              SizedBox(height: 15.v),
              Text(
                "my AID",
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:aid/presentation/splash_screen/splash_screen.dart';
import 'package:aid/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:aid/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:aid/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:aid/presentation/onboarding_four_screen/onboarding_four_screen.dart';
import 'package:aid/presentation/login_screen/login_screen.dart';
import 'package:aid/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:aid/presentation/reset_password_email_tab_container_screen/reset_password_email_tab_container_screen.dart';
import 'package:aid/presentation/reset_password_verify_code_screen/reset_password_verify_code_screen.dart';
import 'package:aid/presentation/create_new_password_screen/create_new_password_screen.dart';
import 'package:aid/presentation/home_container_screen/home_container_screen.dart';
import 'package:aid/presentation/top_doctor_screen/top_doctor_screen.dart';
import 'package:aid/presentation/find_doctors_screen/find_doctors_screen.dart';
import 'package:aid/presentation/doctor_detail_screen/doctor_detail_screen.dart';
import 'package:aid/presentation/booking_doctor_screen/booking_doctor_screen.dart';
import 'package:aid/presentation/articles_screen/articles_screen.dart';
import 'package:aid/presentation/location_screen/location_screen.dart';
import 'package:aid/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String onboardingFourScreen = '/onboarding_four_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String resetPasswordEmailPage = '/reset_password_email_page';

  static const String resetPasswordEmailTabContainerScreen =
      '/reset_password_email_tab_container_screen';

  static const String resetPasswordPhonePage = '/reset_password_phone_page';

  static const String resetPasswordVerifyCodeScreen =
      '/reset_password_verify_code_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String topDoctorScreen = '/top_doctor_screen';

  static const String findDoctorsScreen = '/find_doctors_screen';

  static const String doctorDetailScreen = '/doctor_detail_screen';

  static const String bookingDoctorScreen = '/booking_doctor_screen';

  static const String schedulePage = '/schedule_page';

  static const String messageHistoryPage = '/message_history_page';

  static const String messageHistoryTabContainerPage =
      '/message_history_tab_container_page';

  static const String articlesScreen = '/articles_screen';

  static const String locationScreen = '/location_screen';

  static const String profilePage = '/profile_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    onboardingFourScreen: (context) => OnboardingFourScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    resetPasswordEmailTabContainerScreen: (context) =>
        ResetPasswordEmailTabContainerScreen(),
    resetPasswordVerifyCodeScreen: (context) => ResetPasswordVerifyCodeScreen(),
    createNewPasswordScreen: (context) => CreateNewPasswordScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    topDoctorScreen: (context) => TopDoctorScreen(),
    findDoctorsScreen: (context) => FindDoctorsScreen(),
    doctorDetailScreen: (context) => DoctorDetailScreen(),
    bookingDoctorScreen: (context) => BookingDoctorScreen(),
    articlesScreen: (context) => ArticlesScreen(),
    locationScreen: (context) => LocationScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_aid/screens/onboardingScreen.dart';
import 'package:my_aid/screens/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  group('OnBoardingScreen Widget Tests', () {
    testWidgets('renders PageView', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: OnBoardingScreen()));
      expect(find.byType(PageView), findsOneWidget);
    });

    testWidgets('renders Image, Title, and Description for each onboard item', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: OnBoardingScreen()));
      expect(find.byType(Image), findsNWidgets(3));
      expect(find.text('Exceptional Care'), findsOneWidget);
      expect(find.text('The Right Answers'), findsOneWidget);
      expect(find.text('The Best Specialists'), findsOneWidget);
      expect(find.text('Experience top-tier healthcare with our commitment to providing exceptional and personalized care for your well-being.'), findsOneWidget);
      expect(find.text('Discover a wealth of knowledge and find the right answers to your health-related questions through our comprehensive and reliable information.'), findsOneWidget);
      expect(find.text('Connect with the best specialists in the field who are dedicated to your health and well-being, ensuring you receive expert care tailored to your needs.'), findsOneWidget);
    });

    testWidgets('renders SmoothPageIndicator', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: OnBoardingScreen()));
      expect(find.byType(SmoothPageIndicator), findsOneWidget);
    });

    testWidgets('renders "Get Started" button on last page', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: OnBoardingScreen()));
      await tester.dragUntilVisible(find.text('Get Started'), const Offset(0, -200) as FinderBase<Element>, const Rect.fromLTWH(0, 0, 800, 800) as Offset);
      expect(find.text('Get Started'), findsOneWidget);
    });

    testWidgets('navigates to SignIn screen when "Get Started" button is pressed', (WidgetTester tester) async {
      SharedPreferences.setMockInitialValues({});
      await tester.pumpWidget(const MaterialApp(home: OnBoardingScreen()));
      await tester.dragUntilVisible(find.text('Get Started'), const Offset(0, -200) as FinderBase<Element>, const Rect.fromLTWH(0, 0, 800, 800) as Offset);
      await tester.tap(find.text('Get Started'));
      await tester.pumpAndSettle();
      expect(find.byType(SignIn), findsOneWidget);
    });
  });
}
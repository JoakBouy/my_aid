import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_aid/screens/doctorProfile.dart';
import 'package:my_aid/screens/exploreList.dart';

void main() {
  group('ExploreList', () {
    testWidgets('should render CircularProgressIndicator when snapshot has no data', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: ExploreList(key: Key('test'), type: 'Cardiologist')));
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should render correct appbar title', (WidgetTester tester) async {
      // Assuming you have a way to mock the Firebase data
      await mockFirebaseData();

      await tester.pumpWidget(const MaterialApp(home: ExploreList(key: Key('test'), type: 'Cardiologist')));
      expect(find.text('Cardiologists'), findsOneWidget);
    });

    testWidgets('should render doctor cards', (WidgetTester tester) async {
      // Assuming you have a way to mock the Firebase data
      await mockFirebaseData();

      await tester.pumpWidget(const MaterialApp(home: ExploreList(key: Key('test'), type: 'Cardiologist')));
      expect(find.byType(Card), findsWidgets);
    });

    testWidgets('should navigate to DoctorProfile on card tap', (WidgetTester tester) async {
      // Assuming you have a way to mock the Firebase data
      await mockFirebaseData();

      await tester.pumpWidget(const MaterialApp(home: ExploreList(key: Key('test'), type: 'Cardiologist')));
      await tester.tap(find.byType(Card).first);
      await tester.pumpAndSettle();
      expect(find.byType(DoctorProfile), findsOneWidget);
    });
  });
}

// Mock function to simulate Firebase data
Future<void> mockFirebaseData() async {
  // Implement your mock Firebase data setup here
}
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_aid/screens/doctorProfile.dart';

void main() {
  group('DoctorProfile', () {
    testWidgets('should render CircularProgressIndicator when snapshot has no data', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: DoctorProfile(key: Key('test'), doctor: 'Test Doctor')));
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should render doctor name', (WidgetTester tester) async {
      
      await mockFirebaseData();

      await tester.pumpWidget(const MaterialApp(home: DoctorProfile(key: Key('test'), doctor: 'Test Doctor')));
      expect(find.text('Test Doctor'), findsOneWidget);
    });

    testWidgets('should render doctor type', (WidgetTester tester) async {
    
      await mockFirebaseData();

      await tester.pumpWidget(const MaterialApp(home: DoctorProfile(key: Key('test'), doctor: 'Test Doctor')));
      expect(find.text('Cardiologist'), findsOneWidget);
    });

    testWidgets('should render book an appointment button', (WidgetTester tester) async {
      
      await mockFirebaseData();

      await tester.pumpWidget(const MaterialApp(home: DoctorProfile(key: Key('test'), doctor: 'Test Doctor')));
      expect(find.text('Book an Appointment'), findsOneWidget);
    });
  });
}


Future<void> mockFirebaseData() async {
  // Implement your mock Firebase data setup here
}
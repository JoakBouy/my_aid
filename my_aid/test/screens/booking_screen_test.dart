import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_aid/screens/bookingScreen.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}
class MockFirebaseFirestore extends Mock implements FirebaseFirestore {}
class MockUser extends Mock implements User {}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  group('BookingScreen', () {
    testWidgets('renders Appointment booking title', (WidgetTester tester) async {
      await tester.pumpWidget( MaterialApp(
        home: BookingScreen(doctor: 'Dr. Test', key: UniqueKey()),
      ));

      expect(find.text('Appointment booking'), findsOneWidget);
    });

    testWidgets('validates name field', (WidgetTester tester) async {
      await tester.pumpWidget( MaterialApp(
        home: BookingScreen(doctor: 'Dr. Test', key: UniqueKey()),
      ));

      await tester.enterText(find.byWidgetPredicate((Widget widget) => widget is TextField && widget.decoration?.hintText == 'Patient Name*'), '');
      await tester.pumpAndSettle();
      await tester.tap(find.text('Book Appointment'));
      await tester.pumpAndSettle();

      expect(find.text('Please Enter Patient Name'), findsOneWidget);
    });

    testWidgets('validates phone field', (WidgetTester tester) async {
      await tester.pumpWidget( MaterialApp(
        home: BookingScreen(doctor: 'Dr. Test', key: UniqueKey()),
      ));

      await tester.enterText(find.byWidgetPredicate((Widget widget) => widget is TextField && widget.decoration?.hintText == 'Mobile*'), '1234567890');
      await tester.pumpAndSettle();
      await tester.tap(find.text('Book Appointment'));
      await tester.pumpAndSettle();

      expect(find.text('Please Enter correct Phone number'), findsOneWidget);
    });

    testWidgets('validates date field', (WidgetTester tester) async {
      await tester.pumpWidget( MaterialApp(
        home: BookingScreen(doctor: 'Dr. Test', key: UniqueKey()),
      ));

      await tester.tap(find.text('Book Appointment'));
      await tester.pumpAndSettle();

      expect(find.text('Please Enter the Date'), findsOneWidget);
    });

    testWidgets('validates time field', (WidgetTester tester) async {
      await tester.pumpWidget( MaterialApp(
        home: BookingScreen(doctor: 'Dr. Test', key: UniqueKey()),
      ));

      await tester.tap(find.text('Book Appointment'));
      await tester.pumpAndSettle();

      expect(find.text('Please Enter the Time'), findsOneWidget);
    });

    testWidgets('displays doctor name', (WidgetTester tester) async {
      await tester.pumpWidget( MaterialApp(
        home: BookingScreen(doctor: 'Dr. John Doe', key: UniqueKey()),
      ));

      expect(find.text('Dr. John Doe'), findsOneWidget);
    });


    });
}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_aid/screens/userProfile.dart';
import 'package:my_aid/screens/userSettings.dart';

class MockUser extends Mock implements User {}

void main() {
  group('UserProfile', () {
    testWidgets('should render user display name', (WidgetTester tester) async {
      final mockUser = MockUser();
      when(mockUser.displayName).thenReturn('John Doe');

      await tester.pumpWidget(
        MaterialApp(
          home: UserProfile(
            user: mockUser,
          ),
        ),
      );

      expect(find.text('John Doe'), findsOneWidget);
    });

    testWidgets('should render user email', (WidgetTester tester) async {
      final mockUser = MockUser();
      when(mockUser.email).thenReturn('john@example.com');

      await tester.pumpWidget(
        MaterialApp(
          home: UserProfile(
            user: mockUser,
          ),
        ),
      );

      expect(find.text('john@example.com'), findsOneWidget);
    });

    testWidgets('should render user phone number', (WidgetTester tester) async {
      final mockUser = MockUser();
      when(mockUser.phoneNumber).thenReturn('+1234567890');

      await tester.pumpWidget(
        MaterialApp(
          home: UserProfile(
            user: mockUser,
          ),
        ),
      );

      expect(find.text('+1234567890'), findsOneWidget);
    });

    testWidgets('should navigate to UserSettings on gear icon tap', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: UserProfile()));
      await tester.tap(find.byIcon(FlutterIcons.gear_faw));
      await tester.pumpAndSettle();
      expect(find.byType(UserSettings), findsOneWidget);
    });

    testWidgets('should render CircularProgressIndicator while loading user bio', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: UserProfile()));
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should render user bio from Firestore', (WidgetTester tester) async {
      final mockUser = MockUser();
      when(mockUser.uid).thenReturn('userId');

      final mockFirestore = MockFirestoreInstance();
      when(mockFirestore.collection('users').doc('userId').snapshots()).thenAnswer(
        (_) => Stream.fromIterable([
          {
            'bio': 'This is my bio.',
          }
        ]),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: UserProfile(
            user: mockUser,
          ),
        ),
      );

      await tester.pumpAndSettle();
      expect(find.text('This is my bio.'), findsOneWidget);
    });
  });
}

class MockFirestoreInstance extends Mock implements FirebaseFirestore {}
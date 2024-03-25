import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_aid/screens/userProfile.dart';
import 'package:my_aid/screens/userSettings.dart';

class MockUser extends Mock implements User {}
class MockFirestoreInstance extends Mock implements FirebaseFirestore {}

void main() {
  group('UserProfile', () {
    testWidgets('should render user information', (WidgetTester tester) async {
      final mockUser = MockUser();
      when(mockUser.displayName).thenReturn('John Doe');
      when(mockUser.email).thenReturn('john@example.com');
      when(mockUser.phoneNumber).thenReturn('+1234567890');

      await tester.pumpWidget(
        MaterialApp(
          home: UserProfile(key: UniqueKey()),
        ),
      );

      expect(find.text('John Doe'), findsOneWidget);
      expect(find.text('john@example.com'), findsOneWidget);
      expect(find.text('+1234567890'), findsOneWidget);
    });

    testWidgets('should render gear icon', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: UserProfile(key: UniqueKey()),
        ),
      );

      expect(find.byIcon(FlutterIcons.gear_faw), findsOneWidget);
    });

    
    
  });
}
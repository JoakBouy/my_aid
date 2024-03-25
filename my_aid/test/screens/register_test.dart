import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_aid/screens/register.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

void main() {
  group('SignUpForm Widget Test', () {
    testWidgets('TextFields Test', (WidgetTester tester) async {
      // Mock FirebaseAuth instance
      final mockFirebaseAuth = MockFirebaseAuth();

      final usernameField = find.byKey(const ValueKey("usernameField"));
      final emailField = find.byKey(const ValueKey("emailField"));
      final passwordField = find.byKey(const ValueKey("passwordField"));

      await tester.pumpWidget(
        MaterialApp(
          home: Register(),
        ),
      );
      await tester.enterText(usernameField, "testuser");
      await tester.enterText(emailField, "test@example.com");
      await tester.enterText(passwordField, "testpassword");
      await tester.pump();

      expect(find.text("testuser"), findsOneWidget);
      expect(find.text("test@example.com"), findsOneWidget);
      expect(find.text("testpassword"), findsOneWidget);
    });
  });
}
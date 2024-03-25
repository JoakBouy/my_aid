import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_aid/screens/homePage.dart';
import 'package:my_aid/screens/signin.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

void main() {
  group('SignIn Widget Test', () {
    late MockFirebaseAuth mockFirebaseAuth;

    setUp(() {
      mockFirebaseAuth = MockFirebaseAuth();
    });

    testWidgets('SignIn form validation', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SignIn(),
          ),
        ),
      );

      final emailField = find.byType(TextFormField).first;
      final passwordField = find.byType(TextFormField).last;
      final signInButton = find.byType(ElevatedButton);

      // Attempt to sign in with empty fields
      await tester.tap(signInButton);
      await tester.pump();

      expect(find.text('Please enter the Email'), findsOneWidget);
      expect(find.text('Please enter the Passord'), findsOneWidget);

      // Enter invalid email and valid password
      await tester.enterText(emailField, 'invalidemail');
      await tester.enterText(passwordField, 'validpassword');
      await tester.tap(signInButton);
      await tester.pump();

      expect(find.text('Please enter correct Email'), findsOneWidget);

      // Enter valid email and password
      await tester.enterText(emailField, 'valid@email.com');
      await tester.tap(signInButton);
      await tester.pump();

      // Verify that the user is navigated to the home page
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
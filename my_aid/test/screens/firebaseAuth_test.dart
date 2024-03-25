import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_aid/screens/firebaseAuth.dart';
import 'package:my_aid/screens/register.dart';
import 'package:my_aid/screens/signIn.dart';

void main() {
  group('FireBaseAuth', () {
    testWidgets('should render welcome text', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: FireBaseAuth()));
      expect(find.text('Welcome to My AID!'), findsOneWidget);
    });

    testWidgets('should render sign in button', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: FireBaseAuth()));
      expect(find.text('Sign in'), findsOneWidget);
    });

    testWidgets('should render create account button', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: FireBaseAuth()));
      expect(find.text('Create an Account'), findsOneWidget);
    });

    testWidgets('should navigate to SignIn screen on sign in button tap', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: FireBaseAuth()));
      await tester.tap(find.text('Sign in'));
      await tester.pumpAndSettle();
      expect(find.byType(SignIn), findsOneWidget);
    });

    testWidgets('should navigate to Register screen on create account button tap', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: FireBaseAuth()));
      await tester.tap(find.text('Create an Account'));
      await tester.pumpAndSettle();
      expect(find.byType(Register), findsOneWidget);
    });
  });
}
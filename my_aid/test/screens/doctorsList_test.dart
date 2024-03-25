import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_aid/screens/doctorsList.dart';

void main() {
  group('DoctorsList Widget Tests', () {
    testWidgets('renders AppBar', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: DoctorsList()));
      expect(find.byType(AppBar), findsOneWidget);
      expect(find.text('Find Doctors'), findsOneWidget);
    });

    testWidgets('renders TextFormField', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: DoctorsList()));
      expect(find.byType(TextFormField), findsOneWidget);
      expect(find.text('Search Doctor'), findsOneWidget);
    });

    testWidgets('renders Container for search result', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: DoctorsList()));
      expect(find.byType(Container), findsWidgets);
    });

    testWidgets('renders Image when no search text', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: DoctorsList()));
      expect(find.byType(Image), findsOneWidget);
    });

    testWidgets('renders TextButton when no search text', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: DoctorsList()));
      expect(find.byType(TextButton), findsOneWidget);
      expect(find.text('Show All'), findsOneWidget);
    });

    testWidgets('renders padding', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: DoctorsList()));
      final paddingFinder = find.byKey(const ValueKey('padding'));
      expect(paddingFinder, findsOneWidget);
      final Padding padding = tester.widget(paddingFinder);
      expect(padding.padding, const EdgeInsets.all(10.0));
    });
  });
}
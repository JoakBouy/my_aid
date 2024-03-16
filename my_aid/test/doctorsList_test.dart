import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_aid/doctorsList.dart';

void main() {
 testWidgets('DoctorsList widget renders correctly', (WidgetTester tester) async {
   await tester.pumpWidget(
     const MaterialApp(
       home: DoctorsList(),
     ),
   );

   // Verify that the app bar title is displayed
   expect(find.text('Find Doctors'), findsOneWidget);

   // Verify that the search field is displayed
   expect(find.byType(TextFormField), findsOneWidget);

   // Verify that the search icon is displayed
   expect(find.byIcon(FlutterIcons.search1_ant), findsOneWidget);

   // Verify that the "Show All" button is displayed when no search is entered
   expect(find.text('Show All'), findsOneWidget);

   // Enter search text
   await tester.enterText(find.byType(TextFormField), 'John');

   // Verify that the SearchList widget is displayed
   expect(find.byType(SearchList), findsOneWidget);

   // Clear the search text
   await tester.tap(find.byIcon(Icons.close_rounded));
   await tester.pumpAndSettle();

   // Verify that the "Show All" button is displayed again
   expect(find.text('Show All'), findsOneWidget);
 });
}
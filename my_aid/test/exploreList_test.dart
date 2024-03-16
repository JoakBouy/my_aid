import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_aid/exploreList.dart';

void main() {
 testWidgets('ExploreList widget renders correctly', (WidgetTester tester) async {
   // Create a mock instance of FirebaseFirestore
   final instance = MockFirestoreInstance();
   await instance.collection('doctors').add({
     'name': 'John Doe',
     'type': 'Cardiologist',
     'rating': 4,
   });
   await instance.collection('doctors').add({
     'name': 'Jane Smith',
     'type': 'Cardiologist',
     'rating': 5,
   });

   // Build the ExploreList widget with the mock data
   await tester.pumpWidget(
     MaterialApp(
       home: ExploreList(
         key: const Key('exploreList'),
         type: 'Cardiologist',
       ),
     ),
   );

   // Verify that the app bar title is displayed correctly
   expect(find.text('Cardiologists'), findsOneWidget);

   // Verify that the list of doctors is displayed
   expect(find.byType(ListView), findsOneWidget);

   // Verify that the doctor names are displayed
   expect(find.text('John Doe'), findsOneWidget);
   expect(find.text('Jane Smith'), findsOneWidget);

   // Verify that the doctor types are displayed
   expect(find.text('Cardiologist'), findsNWidgets(2));

   // Verify that the ratings are displayed correctly
   expect(find.text('4'), findsOneWidget);
   expect(find.text('5'), findsOneWidget);
 });
}
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:my_aid/screens/doctorProfile.dart';

void main() {
 testWidgets('DoctorProfile widget renders correctly', (WidgetTester tester) async {
   // Create a mock instance of FirebaseFirestore
   final instance = MockFirestoreInstance();
   await instance.collection('doctors').add({
     'name': 'John Doe',
     'type': 'Cardiologist',
     'rating': 4,
     'specification': 'Heart specialist',
     'address': '123 Main St, Anytown USA',
     'phone': '1234567890',
     'openHour': '9:00 AM',
     'closeHour': '5:00 PM',
     'image': 'https://example.com/doctor.jpg',
   });

   // Build the DoctorProfile widget with the mock data
   await tester.pumpWidget(
     MaterialApp(
       home: DoctorProfile(
         key: const Key('doctorProfile'),
         doctor: 'John Doe',
       ),
     ),
   );

   // Verify that the doctor's name is displayed
   expect(find.text('John Doe'), findsOneWidget);

   // Verify that the doctor's type is displayed
   expect(find.text('Cardiologist'), findsOneWidget);

   // Verify that the rating stars are displayed correctly
   expect(
     find.byIcon(Icons.star_rounded, color: Colors.indigoAccent),
     findsNWidgets(4),
   );
   expect(
     find.byIcon(Icons.star_rounded, color: Colors.black12),
     findsOneWidget,
   );

   // Verify that the specification is displayed
   expect(find.text('Heart specialist'), findsOneWidget);

   // Verify that the address is displayed
   expect(find.text('123 Main St, Anytown USA'), findsOneWidget);

   // Verify that the phone number is displayed
   expect(find.text('1234567890'), findsOneWidget);

   // Verify that the working hours are displayed
   expect(find.text('Today: 9:00 AM - 5:00 PM'), findsOneWidget);

   // Verify that the "Book an Appointment" button is displayed
   expect(find.text('Book an Appointment'), findsOneWidget);
 });
}
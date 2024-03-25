import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_aid/screens/diseasedetail.dart';

class MockFirebaseFirestore extends Mock implements FirebaseFirestore {}

class MockQuerySnapshot<T> extends Mock implements QuerySnapshot<T> {}

void main() {
  group('DiseaseDetail', () {
    testWidgets('renders CircularProgressIndicator when data is loading',
        (WidgetTester tester) async {
      final mockFirebaseFirestore = MockFirebaseFirestore();
      when(mockFirebaseFirestore.collection('disease')).thenThrow(Exception());

      await tester.pumpWidget(
        MaterialApp(
          home: DiseaseDetail(disease: 'Flu'),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders disease details when data is loaded',
        (WidgetTester tester) async {
      final mockFirebaseFirestore = MockFirebaseFirestore();
      final mockQuerySnapshot = MockQuerySnapshot<Map<String, dynamic>>();

      final mockDocumentData = <String, dynamic>{
        'id': '1',
        'Name': 'Flu',
        'Description': 'Flu is a contagious respiratory illness.',
        'Spread': 'Flu spreads through droplets.',
        'Symptoms': 'Fever, cough, body aches.',
        'Warning': 'Difficulty breathing, chest pain.',
      };

      final mockQueryDocumentSnapshot =
          MockQueryDocumentSnapshot(mockDocumentData);

      when(mockQuerySnapshot.docs).thenReturn([mockQueryDocumentSnapshot]);

      when(mockFirebaseFirestore
              .collection('disease')
              .orderBy('Name')
              .startAt(['Flu'])
              .endAt(['Flu\uf8ff'])
              .snapshots())
          .thenAnswer((_) => Stream.value(mockQuerySnapshot));

      await tester.pumpWidget(
        MaterialApp(
          home: DiseaseDetail(disease: 'Flu'),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.text('Flu'), findsOneWidget);
      expect(find.text('Flu is a contagious respiratory illness.'),
          findsOneWidget);
      expect(find.text('How does it spread?'), findsOneWidget);
      expect(find.text('Flu spreads through droplets.'), findsOneWidget);
      expect(find.text('Symptoms'), findsOneWidget);
      expect(find.text('Fever, cough, body aches.'), findsOneWidget);
      expect(find.text('Warning Signs - Seek medical attention'),
          findsOneWidget);
      expect(find.text('Difficulty breathing, chest pain.'), findsOneWidget);
    });
  });
}

class MockQueryDocumentSnapshot<T> extends Mock implements QueryDocumentSnapshot<T> {
  MockQueryDocumentSnapshot(this._data);

  final T _data;

  T data() => _data; // Converted from a getter to a method
}
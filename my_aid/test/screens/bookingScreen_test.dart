import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_aid/screens/bookingScreen.dart';

void main() {
  group('BookingScreenState', () {
    late _BookingScreenState state;
    late Widget widget;

    setUp(() {
      widget = const BookingScreen(
          key: Key('BookingScreen'), doctor: 'Dr. John Doe');
      state = widget.createState() as _BookingScreenState;
    });

    test('initializes controllers and variables correctly', () {
      expect(state._nameController.text, isEmpty);
      expect(state._phoneController.text, isEmpty);
      expect(state._descriptionController.text, isEmpty);
      expect(state._doctorController.text, 'Dr. John Doe');
      expect(state._dateController.text, isEmpty);
      expect(state._timeController.text, 'Select Time');
      expect(state.dateUTC, isNull);
      expect(state.date_Time, isNull);
    });

    // Add more tests...
  });
}

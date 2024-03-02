import '../../../core/app_export.dart';
import 'schedule_item_model.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class ScheduleModel {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Create a new schedule item
  Future<void> createScheduleItem(ScheduleItemModel scheduleItem) async {
    await _firestore
        .collection('schedule')
        .add(scheduleItem.toMap())
        .then((value) => print("Schedule Item Added"))
        .catchError((error) => print("Failed to add schedule item: $error"));
  }

  // Update an existing schedule item
  Future<void> updateScheduleItem(String id, ScheduleItemModel scheduleItem) async {
    await _firestore
        .collection('schedule')
        .doc(id)
        .update(scheduleItem.toMap())
        .then((value) => print("Schedule Item Updated"))
        .catchError((error) => print("Failed to update schedule item: $error"));
  }

  // Get all schedule items
  Future<List<ScheduleItemModel>> getScheduleItems() async {
    final QuerySnapshot querySnapshot = await _firestore.collection('schedule').get();
    return querySnapshot.docs.where((doc) => doc.data() != null).map((doc) => ScheduleItemModel.fromMap(doc.data() as Map<String, dynamic>)).toList();
  }

  // Delete a schedule item
  Future<void> deleteScheduleItem(String id) async {
    await _firestore.collection('schedule').doc(id).delete().then((value) => print("Schedule Item Deleted")).catchError((error) => print("Failed to delete schedule item: $error"));
  }
}
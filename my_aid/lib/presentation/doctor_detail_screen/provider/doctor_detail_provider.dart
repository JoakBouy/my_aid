import 'package:flutter/material.dart';
import 'package:aid/core/app_export.dart';
import 'package:aid/presentation/doctor_detail_screen/models/doctor_detail_model.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../models/am_item_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DoctorDetailProvider extends ChangeNotifier {
  DoctorDetailModel doctorDetailModelObj = DoctorDetailModel();
  DateTime? selectedDatesFromCalendar1;

  // Firestore collection reference
  final CollectionReference amItemsCollection =
      FirebaseFirestore.instance.collection('am_items');

  List<AmItemModel>? get amItemList => null;

  @override
  void dispose() {
    super.dispose();
  }

  // Add a new AM item to Firestore
  Future<void> addAmItem(AmItemModel amItem) async {
    await amItemsCollection.add({
      'am': amItem.am,
      'isSelected': amItem.isSelected,
    });

    notifyListeners();
  }

  // Fetch AM items from Firestore
  Future<List<AmItemModel>> getAmItems() async {
    QuerySnapshot<Object?> querySnapshot =
        await amItemsCollection.get();

    List<AmItemModel> amItems = querySnapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      return AmItemModel(
        id: doc.id,
        am: data['am'],
        isSelected: data['isSelected'],
      );
    }).toList();

    return amItems;
  }

  // Update an existing AM item in Firestore
  Future<void> updateAmItem(AmItemModel amItem) async {
    await amItemsCollection.doc(amItem.id).update({
      'am': amItem.am,
      'isSelected': amItem.isSelected,
    });

    notifyListeners();
  }

  // Delete an AM item from Firestore
  Future<void> deleteAmItem(String id) async {
    await amItemsCollection.doc(id).delete();
    notifyListeners();
  }

  // Update selected chip UI in DoctorDetailModel
  void onSelectedChipView1(int index, bool value) {
    doctorDetailModelObj.amItemList.forEach((element) {
      element.isSelected = false;
    });
    doctorDetailModelObj.amItemList[index].isSelected = value;
    notifyListeners();
  }
}
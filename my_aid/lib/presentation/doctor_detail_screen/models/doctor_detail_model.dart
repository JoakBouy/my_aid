import 'am_item_model.dart';
import '../../../core/app_export.dart';

class DoctorDetailModel {
  List<AmItemModel> amItemList = List.generate(9, (index) => AmItemModel(am: ''));
}

DoctorDetailModel doctorDetailModel = DoctorDetailModel();

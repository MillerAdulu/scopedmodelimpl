import 'package:scoped_model/scoped_model.dart';

import 'package:scopedmodelprac/service_locator.dart';
import 'package:scopedmodelprac/services/storage_service.dart';

class HomeModel extends Model {
  StorageService _storageService = locator<StorageService>();
  String title = "HomeModel";

  Future saveData() async {
    setTitle("Saving data");
    await _storageService.saveData();
    setTitle("Data saved");
  }

  void setTitle(String value) {
    title = value;
    notifyListeners();
  }
}

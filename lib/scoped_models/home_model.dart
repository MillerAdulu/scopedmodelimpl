import 'package:scopedmodelprac/enums/view_states.dart';
import 'package:scopedmodelprac/scoped_models/base_model.dart';
import 'package:scopedmodelprac/service_locator.dart';
import 'package:scopedmodelprac/services/storage_service.dart';

class HomeModel extends BaseModel {
  StorageService _storageService = locator<StorageService>();
  String title = "HomeModel";

  Future saveData() async {
    setState(ViewState.Busy);
    setTitle("Saving data");
    await _storageService.saveData();
    setTitle("Data saved");
    setState(ViewState.Retrieved);
  }

  void setTitle(String value) {
    title = value;
    notifyListeners();
  }
}

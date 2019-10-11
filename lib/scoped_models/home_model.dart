import 'package:scoped_model/scoped_model.dart';
import 'package:scopedmodelprac/enums/view_states.dart';

import 'package:scopedmodelprac/service_locator.dart';
import 'package:scopedmodelprac/services/storage_service.dart';

class HomeModel extends Model {
  StorageService _storageService = locator<StorageService>();
  String title = "HomeModel";

  ViewState _state;
  ViewState get state => _state;

  Future saveData() async {
    _setState(ViewState.Busy);
    setTitle("Saving data");
    await _storageService.saveData();
    setTitle("Data saved");
    _setState(ViewState.Retrieved);
  }

  void setTitle(String value) {
    title = value;
    notifyListeners();
  }

  void _setState(ViewState newState) {
    _state = newState;
    notifyListeners();
  }
}

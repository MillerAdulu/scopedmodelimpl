import 'package:get_it/get_it.dart';
import 'package:scopedmodelprac/scoped_models/home_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Register services

  // Register models
  locator.registerFactory<HomeModel>(() => HomeModel());
}

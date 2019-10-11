import 'package:get_it/get_it.dart';

import 'package:scopedmodelprac/scoped_models/home_model.dart';
import 'package:scopedmodelprac/services/storage_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Register services
  locator.registerLazySingleton<StorageService>(() => StorageService());

  // Register models
  locator.registerFactory<HomeModel>(() => HomeModel());
}

class StorageService {
  Future<bool> saveData() async {
    await Future.delayed(Duration(seconds: 5));
    return true;
  }
}

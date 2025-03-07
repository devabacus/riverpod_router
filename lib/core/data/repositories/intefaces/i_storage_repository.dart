
abstract class IStorageRepository {

  Future<bool> saveString(String key, String value);
  Future<String> getString(String key, {String defaultValue = ""});

  Future<bool> saveInt(String key, int value);
  Future<int> getInt(String key, {int defaultValue = 0});

  Future<bool> saveBool(String key, bool value);
  Future<bool> getBool(String key, {bool defaultValue = false});

  Future<bool> containsKey(String key);
  Future<bool> removeKey(String key);
  Future<bool> clearAll();

}




import 'package:riverpod_router/core/data/repositories/intefaces/i_storage_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesRepository implements IStorageRepository {
   final SharedPreferences pref;

  SharedPreferencesRepository({required this.pref}); 
  
  @override
  Future<bool> saveString(String key, String value) async {
    return pref.setString(key, value);
  }

  @override
  Future<String> getString(String key, {String defaultValue = ""}) async {
    return pref.getString(key) ?? "";
  }

  @override
  Future<bool> saveInt(String key, int value) async {
    return pref.setInt(key, value);
  }

  @override
  Future<int> getInt(String key, {int defaultValue = 0}) async {
    return pref.getInt(key) ?? 0;
  }

  @override
  Future<bool> saveBool(String key, bool value) async {
    return pref.setBool(key, value);
  }

  @override
  Future<bool> getBool(String key, {bool defaultValue = false}) async {
    return pref.getBool(key) ?? false;
  }

  @override
  Future<bool> clearAll() async {
    return pref.clear();
  }

  @override
  Future<bool> containsKey(String key) async {
    return pref.containsKey(key);
  }

  @override
  Future<bool> removeKey(String key) async {
    return pref.remove(key);
  }
}

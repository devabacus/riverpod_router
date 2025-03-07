import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefRepository {
  SharedPreferences? _prefInstance;

  Future<SharedPreferences> _getPrefs() async {
    _prefInstance ??= await SharedPreferences.getInstance();
    return _prefInstance!;
  }

  Future<bool> saveUser(String user) async {
    final prefs = await _getPrefs();
    return prefs.setString('user', user);
  }

  Future<String> getUser() async {
    final prefs = await _getPrefs();
    return prefs.getString('user') ?? "";
  }

  Future<bool> removeKey(String key) async {
    final prefs = await _getPrefs();
    return prefs.remove(key);
  }

  Future<bool> clearAll() async {
    final prefs = await _getPrefs();
    return prefs.clear();
  }
}

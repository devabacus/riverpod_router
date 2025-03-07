import 'package:riverpod_router/core/data/repositories/intefaces/i_storage_repository.dart';

class UserRepository {
  final IStorageRepository _storage;
  static const String _userKey = 'user';

  UserRepository(this._storage);

  Future<bool> saveUser(String userData) async {
      return _storage.saveString(_userKey, userData);
    }

  Future<String> getUser() async {
      return _storage.getString(_userKey);
    }  
}
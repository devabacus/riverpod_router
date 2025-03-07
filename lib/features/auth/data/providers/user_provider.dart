import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_router/features/auth/data/models/user.dart';

part 'user_provider.g.dart';

@riverpod
class UserNotifier extends _$UserNotifier {
  @override
  User? build() {
    return null;
  }

  void login(String name, String pass) {
    state = User(id: '1', name: name, pass: pass);
  }

  void logout() {
    state = null;
  }
}

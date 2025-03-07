import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_router/features/auth/data/models/login_state.dart';
import 'package:riverpod_router/features/auth/data/providers/user_provider.dart';

part 'login_controllers.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  LoginState build() {
    return LoginState();
  }

  void setLogin(String loginVal) {
    state = state.copyWith(login: loginVal);
  }

  void setPassword(String pass) {
    state = state.copyWith(password: pass);
  }

  Future<void> login() async {
    state = state.copyWith(isloading: true);

    try {
      await Future.delayed(Duration(seconds: 1));

      ref
          .read(userNotifierProvider.notifier)
          .login(state.login, state.password);

      state = LoginState();

    } catch (e) {
      print('Error: ${e.toString()}');
    } finally {
      state = state.copyWith(isloading: false);
      
    }
  }
}

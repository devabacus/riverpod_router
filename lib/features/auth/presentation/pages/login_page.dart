import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_router/features/auth/presentation/controllers/login_controllers.dart';
import 'package:riverpod_router/features/auth/presentation/widgets/auth_text_field.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final controller = ref.read(loginControllerProvider.notifier);
    final loginState = ref.watch(loginControllerProvider);
    

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AuthTextField(onTextChanged: (str) => controller.setLogin(str), label: "Логин"),
              SizedBox(height: 30),
              AuthTextField(onTextChanged: (str) => controller.setPassword(str), label: "Пароль"),
              SizedBox(height: 30),
              ElevatedButton(onPressed: loginState.isLoading ? null : controller.login, child: loginState.isLoading ? CircularProgressIndicator() : Text("Авторизация")),
            ],
          ),
        ),
      ),
    );
  }
}

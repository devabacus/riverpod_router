import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_router/features/auth/presentation/widgets/auth_text_field.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AuthTextField(onTextChanged: (val) => {}, label: "Логин"),
              SizedBox(height: 30),
              AuthTextField(onTextChanged: (val) => {}, label: "Пароль"),
              SizedBox(height: 30),
              ElevatedButton(onPressed: () {}, child: Text("Авторизация")),
            ],
          ),
        ),
      ),
    );
  }
}

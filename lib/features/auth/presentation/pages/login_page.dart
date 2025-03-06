import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_router/features/auth/presentation/widgets/auth_text_field.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        children: [
          AuthTextField(onTextChanged: (val) => {}, label: "Логин"),
          SizedBox(height: 30),
          AuthTextField(onTextChanged: (val) => {}, label: "Логин"),
          SizedBox(height: 30),
          ElevatedButton(onPressed: (){}, child: Text("Авторизация"))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_router/core/routings/app_routes.dart';

class SecondScreen extends StatelessWidget {
  final String id;

  const SecondScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Second Screen id = $id"),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => context.go(AppRoutes.home),
              child: Text("Домой"),
            ),
          ],
        ),
      ),
    );
  }
}

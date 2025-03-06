import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_router/core/routings/app_routes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home"),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => context.go(AppRoutes.secondWithIdPath.replaceFirst(':id', '125'), ),
              child: Text("На второй экран"),
            ),
          ],
        ),
      ),
    );
  }
}
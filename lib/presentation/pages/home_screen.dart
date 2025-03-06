import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              onPressed: () => context.go('/secondScreen'),
              child: Text("На второй экран"),
            ),
          ],
        ),
      ),
    );
  }
}
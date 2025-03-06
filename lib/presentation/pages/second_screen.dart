import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Second Screen"),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: Text("Домой"),
            ),
          ],
        ),
      ),
    );
  }
}
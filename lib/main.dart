import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'presentation/pages/second_screen.dart';
import 'presentation/pages/home_screen.dart';

final _router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => Home()),
    GoRoute(
      path: '/secondScreen',
      builder: (countext, state) => SecondScreen(),
    ),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}





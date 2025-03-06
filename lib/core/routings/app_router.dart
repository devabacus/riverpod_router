import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/home/presentation/pages/home_screen.dart';
import '../../features/second/presentation/pages/second_screen.dart';
import 'app_routes.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: AppRoutes.homePath,
    routes: [
      GoRoute(
        name: AppRoutes.home,
        path: AppRoutes.homePath,
        builder: (BuildContext context, state) => Home(),
      ),
      GoRoute(
        name: AppRoutes.second,
        path: AppRoutes.secondPath,
        builder: (BuildContext countext, state) => SecondScreen(id: "1",),
      ),
      GoRoute(
        name:AppRoutes.secondWithId,
        path: AppRoutes.secondWithIdPath,
        builder: (BuildContext context, state) {
          final id = state.pathParameters['id'] ?? '';
          return SecondScreen(id: id);
        },
      ),
    ],
    errorBuilder:
        (context, state) =>
            Scaffold(body: Center(child: Text("Ошибка маршрутизации"))),
  );
}

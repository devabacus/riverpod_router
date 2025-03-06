import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_router/core/routings/app_routes.dart';
import 'package:riverpod_router/features/home/presentation/controller/counter_provider.dart';

class SecondScreen extends ConsumerWidget {
  final String id;

  const SecondScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Second Screen id = $id, счетчик = $counter"),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => context.goNamed(AppRoutes.home),
              child: Text("Домой"),
            ),
          ],
        ),
      ),
    );
  }
}

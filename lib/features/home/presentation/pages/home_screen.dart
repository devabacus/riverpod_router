import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_router/core/routings/app_routes.dart';
import 'package:riverpod_router/features/home/presentation/controller/counter_provider.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Значение счетчика = $counter"),
            SizedBox(height: 30),
            ElevatedButton(onPressed: ()=>ref.read(counterProvider.notifier).increment(), child: Text("Увеличить")),
            ElevatedButton(
              onPressed:
                  () => context.goNamed(
                    AppRoutes.secondWithId,
                    pathParameters: {'id': '333'},
                  ),
              child: Text("На второй экран"),
            ),
          ],
        ),
      ),
    );
  }
}

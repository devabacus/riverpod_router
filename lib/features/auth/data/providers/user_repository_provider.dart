
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_router/core/providers/storage_providers.dart';
import 'package:riverpod_router/features/auth/data/repositories/user_repository.dart';

part 'user_repository_provider.g.dart';


@riverpod
UserRepository userRepository (Ref ref) {
  final storageRepository = ref.watch(storageProvider);
  return UserRepository(storageRepository);
  
}
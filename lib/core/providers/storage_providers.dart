import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_router/core/data/repositories/implementations/shared_preferences_repository.dart';
import 'package:riverpod_router/core/data/repositories/intefaces/i_storage_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'storage_providers.g.dart';


@riverpod
Future<SharedPreferences> sharedPreferences(Ref ref) async{
  return await SharedPreferences.getInstance();
}

@riverpod
IStorageRepository storageProvider(Ref ref) {
  final sharedPreferences = ref.watch(sharedPreferencesProvider).value;
  if (sharedPreferences == null) {
    throw UnimplementedError('SharedPreferences not initialized');
  }
  return SharedPreferencesRepository(pref: sharedPreferences);
}


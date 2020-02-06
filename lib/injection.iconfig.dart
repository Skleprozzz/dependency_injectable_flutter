// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dependency_injectable_flutter/domain/i_counter_repository.dart';
import 'package:dependency_injectable_flutter/infrastructure/counter_repository.dart';
import 'package:dependency_injectable_flutter/infrastructure/dev_counter_repository.dart';
import 'package:dependency_injectable_flutter/presentation/counter_change_notifier.dart';
import 'package:dependency_injectable_flutter/infrastructure/mock_counter_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void $initGetIt({String environment}) {
  getIt
    ..registerFactory<CounterRepository>(() => CounterRepository())
    ..registerFactory<DevCounterRepository>(() => DevCounterRepository())
    ..registerFactory<CounterChangeNotifier>(
        () => CounterChangeNotifier(getIt<ICounterRepository>()))
    ..registerFactory<MockCounterRepository>(() => MockCounterRepository());
  if (environment == 'dev') {
    _registerDevDependencies();
  }
  if (environment == 'prod') {
    _registerProdDependencies();
  }
  if (environment == 'test') {
    _registerTestDependencies();
  }
}

void _registerDevDependencies() {
  getIt..registerFactory<ICounterRepository>(() => DevCounterRepository());
}

void _registerProdDependencies() {
  getIt..registerFactory<ICounterRepository>(() => CounterRepository());
}

void _registerTestDependencies() {
  getIt..registerFactory<ICounterRepository>(() => MockCounterRepository());
}

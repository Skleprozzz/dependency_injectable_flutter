import 'package:dependency_injectable_flutter/infrastructure/counter_repository.dart';
import 'package:dependency_injectable_flutter/infrastructure/dev_counter_repository.dart';
import 'package:dependency_injectable_flutter/infrastructure/mock_counter_repository.dart';
import 'package:dependency_injectable_flutter/injection.dart';
import 'package:injectable/injectable.dart';

@Bind.toType(DevCounterRepository, env: Env.dev)
@Bind.toType(CounterRepository, env: Env.prod)
@Bind.toType(MockCounterRepository, env: Env.test)
@injectable
abstract class ICounterRepository {
  int getIncrement();
}

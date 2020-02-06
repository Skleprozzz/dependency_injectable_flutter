import 'package:dependency_injectable_flutter/domain/i_counter_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CounterRepository implements ICounterRepository {
  @override
  int getIncrement() => 1;
}

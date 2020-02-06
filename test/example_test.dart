import 'package:dependency_injectable_flutter/domain/i_counter_repository.dart';
import 'package:dependency_injectable_flutter/infrastructure/mock_counter_repository.dart';
import 'package:dependency_injectable_flutter/injection.dart';
import 'package:dependency_injectable_flutter/injection.iconfig.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  setUpAll(() {
    configureInjection(Env.test);
  });

  test('asdasdasd', () async {
    final mockCounterRepository = getIt<ICounterRepository>();

    when(mockCounterRepository.getIncrement()).thenReturn(123);

    verify(mockCounterRepository.getIncrement()).called(10);
  });
}

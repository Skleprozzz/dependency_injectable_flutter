import 'package:dependency_injectable_flutter/injection.iconfig.dart';
import 'package:injectable/injectable.dart';

@injectableInit
void configureInjection(String environment) =>
    $initGetIt(environment: environment);

abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
  static const test = 'test';
}

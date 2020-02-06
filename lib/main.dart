import 'package:dependency_injectable_flutter/domain/i_counter_repository.dart';
import 'package:dependency_injectable_flutter/infrastructure/counter_repository.dart';
import 'package:dependency_injectable_flutter/injection.dart';
import 'package:dependency_injectable_flutter/injection.iconfig.dart';
import 'package:dependency_injectable_flutter/presentation/counter_change_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  configureInjection(Env.dev);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider(
        create: (_) => getIt<CounterChangeNotifier>(),
      ),
    );
  }
}

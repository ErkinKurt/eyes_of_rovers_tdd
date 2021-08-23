import 'package:eyes_of_rovers_tdd/injection_container.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final serviceLocator = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(serviceLocator);

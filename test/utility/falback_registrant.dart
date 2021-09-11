import 'package:mocktail/mocktail.dart';

void registerFallbackValues(List<Object> dummies) => dummies.forEach(
      (element) {
        registerFallbackValue(element);
      },
    );

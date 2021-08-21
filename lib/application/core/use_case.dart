import 'package:eyes_of_rovers_tdd/domain/core/data_result.dart';

abstract class UseCase<Type, Params> {
  Future<DataResult<Type>> call(Params params);
}

import 'package:chopper/chopper.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/client/converters/json_serializable_convertor.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/service/rover_service.dart';
import 'package:eyes_of_rovers_tdd/injection_container.dart';
import 'package:injectable/injectable.dart';

class ChopperClientFactoryParams {
  ChopperClientFactoryParams({
    required this.baseUrl,
    required this.jsonConverter,
    required this.services,
  });

  final String baseUrl;
  final JsonConverter jsonConverter;
  final Iterable<ChopperService> services;
}

@module
abstract class ChopperModule {
  ChopperClient chopperClientFactory(@factoryParam ChopperClientFactoryParams? params) {
    return ChopperClient(
      baseUrl: params!.baseUrl,
      services: params.services,
      converter: params.jsonConverter,
    );
  }

  @Named('BaseUrl')
  String get baseUrl => 'base url';

  @lazySingleton
  ChopperClientFactoryParams chopperClientFactoryParams(@Named('BaseUrl') String baseUrl) =>
      ChopperClientFactoryParams(baseUrl: baseUrl, jsonConverter: JsonSerializableConverter(), services: [
        serviceLocator.get<RoverService>(),
      ]);
}

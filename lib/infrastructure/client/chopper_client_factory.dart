import 'package:chopper/chopper.dart';

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

ChopperClient chopperClientFactory(ChopperClientFactoryParams params) {
  return ChopperClient(
    baseUrl: params.baseUrl,
    services: params.services,
    converter: params.jsonConverter,
  );
}

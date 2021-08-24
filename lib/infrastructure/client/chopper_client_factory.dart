import 'package:chopper/chopper.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/client/converters/json_serializable_convertor.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ChopperClientFactoryParams {
  ChopperClientFactoryParams({
    @Named('BaseUrl') required this.baseUrl,
    required this.jsonConverter,
    @Named('services') required this.services,
  });

  final String baseUrl;
  final JsonConverter jsonConverter;
  final Iterable<ChopperService> services;
}

@module
abstract class ChopperModule {
  @Named("BaseUrl")
  String get baseUrl => 'https://api.nasa.gov';

  @Named("Services")
  Iterable<ChopperService> get services => const [];

  @factoryMethod
  ChopperClient chopperClientFactory(@factoryParam ChopperClientFactoryParams? params) {
    return ChopperClient(
      baseUrl: params?.baseUrl ?? baseUrl,
      services: params?.services ?? services,
      converter: params?.jsonConverter ?? JsonSerializableConverter(),
    );
  }
}

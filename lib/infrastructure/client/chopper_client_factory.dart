import 'package:chopper/chopper.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/client/converters/json_serializable_convertor.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ChopperClientFactoryParams {
  ChopperClientFactoryParams({
    @Named('BaseUrl') required this.baseUrl,
    required this.jsonConverter,
  });

  final String baseUrl;
  final JsonConverter jsonConverter;
}

@module
abstract class ChopperModule {
  @Named("BaseUrl")
  String get baseUrl => 'https://api.nasa.gov';

  @singleton
  ChopperClient chopperClientFactory(ChopperClientFactoryParams? params) {
    return ChopperClient(
      baseUrl: params?.baseUrl ?? baseUrl,
      converter: params?.jsonConverter ?? JsonSerializableConverter(),
    );
  }
}

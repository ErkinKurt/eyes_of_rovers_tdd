import 'package:chopper/chopper.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/client/converters/json_type_parser.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: JsonConverter)
class JsonSerializableConverter extends JsonConverter {
  @override
  Response<ResultType> convertResponse<ResultType, Item>(Response response) {
    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(body: JsonTypeParser.decode<Item>(jsonRes.body));
  }

  @override
  // We won't be dealing with toJson methods for now...
  Request convertRequest(Request request) => super.convertRequest(request);

  @override
  Response convertError<BodyType, InnerType>(Response response) {
    final jsonRes = super.convertError(response);
    // final responseError = JsonTypeParser.decode<ResponseError>(jsonRes.body);
    return jsonRes.copyWith(bodyError: jsonRes.error);
  }
}

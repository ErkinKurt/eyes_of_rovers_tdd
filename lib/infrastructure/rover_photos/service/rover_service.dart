import 'package:chopper/chopper.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/models/photo_model.dart';
import 'package:injectable/injectable.dart';

part 'rover_service.chopper.dart';

@Injectable()
@ChopperApi(baseUrl: "/rovers")
abstract class RoverService extends ChopperService {
  @factoryMethod
  static RoverService create(ChopperClient? chopperClient) => _$RoverService(chopperClient);

  @Get(path: "/{rover_type}/photos")
  Future<Response<List<PhotoModel>>> getRoverPhotos(
    @Query('camera_type') String cameraType,
    @Path('rover_type') String roverType,
    @Query('page') int pageIndex,
  );
}

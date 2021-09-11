import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/camera_type.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/rover_type.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/models/photo_model.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/service/rover_service.dart';
import 'package:injectable/injectable.dart';

abstract class RoverDataSource {
  Future<List<PhotoModel>> getRoverPhotos(
    CameraType cameraType,
    RoverType roverType,
    int pageIndex,
  );
}

@Injectable(as: RoverDataSource)
class RoverRemoteDataSource implements RoverDataSource {
  RoverRemoteDataSource(this._roverService);

  final RoverService _roverService;

  @override
  Future<List<PhotoModel>> getRoverPhotos(
    CameraType cameraType,
    RoverType roverType,
    int pageIndex,
  ) async {
    final response = await _roverService.getRoverPhotos(
      cameraType.name,
      roverType.name,
      pageIndex,
    );

    if (response.error != null) {
      throw Exception();
    }

    return response.body!;
  }
}

import 'package:eyes_of_rovers_tdd/domain/entities/rover_type.dart';
import 'package:eyes_of_rovers_tdd/domain/entities/photo.dart';
import 'package:eyes_of_rovers_tdd/domain/entities/camera_type.dart';
import 'package:eyes_of_rovers_tdd/domain/core/data_result.dart';
import 'package:eyes_of_rovers_tdd/domain/repositories/rover_repository.dart';

class RoverRepositoryImpl extends RoverRepository {
  @override
  Future<DataResult<List<Photo>>> getRoverPhotos(CameraType cameraType, RoverType roverType, int pageIndex) {
    // TODO: implement getRoverPhotos
    throw UnimplementedError();
  }
}

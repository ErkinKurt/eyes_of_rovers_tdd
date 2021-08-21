import 'package:eyes_of_rovers_tdd/domain/core/data_result.dart';
import 'package:eyes_of_rovers_tdd/domain/entities/camera_type.dart';
import 'package:eyes_of_rovers_tdd/domain/entities/photo.dart';
import 'package:eyes_of_rovers_tdd/domain/entities/rover_type.dart';

abstract class RoverRepository {
  Future<DataResult<List<Photo>>> getRoverPhotos(
    CameraType cameraType,
    RoverType roverType,
    int pageIndex,
  );
}

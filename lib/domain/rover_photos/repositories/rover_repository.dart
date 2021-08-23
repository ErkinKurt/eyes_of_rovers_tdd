import 'package:eyes_of_rovers_tdd/domain/core/data_result.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/camera_type.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/photo.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/rover_type.dart';

abstract class RoverRepository {
  Future<DataResult<List<Photo>>> getRoverPhotos(
    CameraType cameraType,
    RoverType roverType,
    int pageIndex,
  );
}

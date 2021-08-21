import 'package:eyes_of_rovers_tdd/domain/entities/camera_type.dart';
import 'package:eyes_of_rovers_tdd/domain/entities/rover_type.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/models/photo_model.dart';

abstract class RoverService {
  Future<List<PhotoModel>> getRoverPhotos(
    CameraType cameraType,
    RoverType roverType,
    int pageIndex,
  );
}

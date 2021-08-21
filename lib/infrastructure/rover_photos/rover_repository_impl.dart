import 'package:eyes_of_rovers_tdd/domain/core/failure.dart';
import 'package:eyes_of_rovers_tdd/domain/entities/rover_type.dart';
import 'package:eyes_of_rovers_tdd/domain/entities/photo.dart';
import 'package:eyes_of_rovers_tdd/domain/entities/camera_type.dart';
import 'package:eyes_of_rovers_tdd/domain/core/data_result.dart';
import 'package:eyes_of_rovers_tdd/domain/repositories/rover_repository.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/service/rover_service.dart';

class RoverRepositoryImpl extends RoverRepository {
  RoverRepositoryImpl(this._roverService);

  final RoverService _roverService;

  @override
  Future<DataResult<List<Photo>>> getRoverPhotos(
    CameraType cameraType,
    RoverType roverType,
    int pageIndex,
  ) async {
    try {
      final result = await _roverService.getRoverPhotos(
        cameraType,
        roverType,
        pageIndex,
      );
      final photos = result.map((e) => e.toDomain()).toList();
      return DataResult.success(photos);
    } catch (e) {
      return DataResult.failure(Failure());
    }
  }
}

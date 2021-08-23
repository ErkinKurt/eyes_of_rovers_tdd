import 'package:eyes_of_rovers_tdd/domain/core/failure.dart';
import 'package:eyes_of_rovers_tdd/domain/core/data_result.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/camera_type.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/photo.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/rover_type.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/repositories/rover_repository.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/data_source/rover_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: RoverRepository)
class RoverRepositoryImpl extends RoverRepository {
  RoverRepositoryImpl(this._roverDataSource);

  final RoverDataSource _roverDataSource;

  @override
  Future<DataResult<List<Photo>>> getRoverPhotos(
    CameraType cameraType,
    RoverType roverType,
    int pageIndex,
  ) async {
    try {
      final result = await _roverDataSource.getRoverPhotos(
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

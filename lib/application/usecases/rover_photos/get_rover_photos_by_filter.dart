import 'package:eyes_of_rovers_tdd/application/core/use_case.dart';
import 'package:eyes_of_rovers_tdd/domain/core/data_result.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/camera_type.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/photo.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/rover_type.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/repositories/rover_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetRoverPhotosByFilter
    extends UseCase<List<Photo>, GetRoverPhotosByFilterParams> {
  final RoverRepository roverRepository;

  GetRoverPhotosByFilter(this.roverRepository);

  @override
  Future<DataResult<List<Photo>>> call(GetRoverPhotosByFilterParams params) {
    return roverRepository.getRoverPhotos(
      params.cameraType,
      params.roverType,
      params.pageIndex,
    );
  }
}

class GetRoverPhotosByFilterParams {
  final CameraType cameraType;
  final RoverType roverType;
  final int pageIndex;

  GetRoverPhotosByFilterParams(
    this.cameraType,
    this.roverType,
    this.pageIndex,
  );
}

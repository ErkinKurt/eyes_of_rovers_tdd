import 'package:eyes_of_rovers_tdd/application/usecases/rover_photos/get_rover_photos_by_filter.dart';
import 'package:eyes_of_rovers_tdd/domain/core/data_result.dart';
import 'package:eyes_of_rovers_tdd/domain/core/failure.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/camera_type.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/photo.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/rover_type.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/repositories/rover_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'get_rover_photos_by_filter_test.mocks.dart';

@GenerateMocks([RoverRepository])
void main() {
  late GetRoverPhotosByFilter getRoverPhotosByFilter;
  late MockRoverRepository mockRoverRepository;

  setUp(() {
    mockRoverRepository = MockRoverRepository();
    getRoverPhotosByFilter = GetRoverPhotosByFilter(mockRoverRepository);
  });

  group('GetRoverPhotosByFilter', () {
    test('should call correct method from rover repository', () async {
      // arrange
      GetRoverPhotosByFilterParams params = GetRoverPhotosByFilterParams(
        CameraType.CHEMCAM,
        RoverType.Curiosity,
        1,
      );
      when(mockRoverRepository.getRoverPhotos(
        CameraType.CHEMCAM,
        RoverType.Curiosity,
        1,
      )).thenAnswer(
        (_) async => DataResult.success(
          [
            Photo(1),
          ],
        ),
      );

      // act
      await getRoverPhotosByFilter(params);

      // assert
      verify(mockRoverRepository.getRoverPhotos(
        CameraType.CHEMCAM,
        RoverType.Curiosity,
        1,
      )).called(1);
    });

    test(
        'should return list of photos from repository'
        ' when result is success', () async {
      final photos = [Photo(1), Photo(2)];
      GetRoverPhotosByFilterParams params = GetRoverPhotosByFilterParams(
        CameraType.CHEMCAM,
        RoverType.Curiosity,
        1,
      );
      when(mockRoverRepository.getRoverPhotos(
        CameraType.CHEMCAM,
        RoverType.Curiosity,
        1,
      )).thenAnswer(
        (_) async => DataResult.success(photos),
      );

      final result = await getRoverPhotosByFilter(params);

      expect(result.isSuccess, true);
      expect(result.data, [Photo(1), Photo(2)]);
    });

    test(
        'should return failure from repository'
        ' when result is failure', () async {
      GetRoverPhotosByFilterParams params = GetRoverPhotosByFilterParams(
        CameraType.CHEMCAM,
        RoverType.Curiosity,
        1,
      );
      when(mockRoverRepository.getRoverPhotos(
        CameraType.CHEMCAM,
        RoverType.Curiosity,
        1,
      )).thenAnswer(
        (_) async => DataResult.failure(Failure()),
      );

      final result = await getRoverPhotosByFilter(params);

      expect(result.isFailure, true);
      expect(result.error, Failure());
    });
  });
}

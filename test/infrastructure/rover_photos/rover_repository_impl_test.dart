import 'package:eyes_of_rovers_tdd/domain/core/failure.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/camera_type.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/photo.dart';
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/rover_type.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/data_source/rover_data_source.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/models/photo_model.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/rover_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../utility/falback_registrant.dart';

class MockRemoteRoverDataSource extends Mock implements RoverRemoteDataSource {}

void main() {
  group('RoverRepositoryImpl', () {
    late RoverRepositoryImpl roverRepositoryImpl;
    late RoverRemoteDataSource roverDataSource;

    setUpAll(() {
      registerFallbackValues([CameraType.CHEMCAM, RoverType.Curiosity]);
    });

    setUp(() {
      roverDataSource = MockRemoteRoverDataSource();
      roverRepositoryImpl = RoverRepositoryImpl(roverDataSource);
    });

    test('should invoke correct method from service', () async {
      when(() => roverDataSource.getRoverPhotos(
            any(),
            any(),
            any(),
          )).thenAnswer((_) async => [PhotoModel(id: 2)]);

      await roverRepositoryImpl.getRoverPhotos(
        CameraType.CHEMCAM,
        RoverType.Curiosity,
        1,
      );

      verify(() => roverDataSource.getRoverPhotos(
            any(),
            any(),
            any(),
          )).called(1);
    });

    test('should return failure' ' when exception occurs', () async {
      when(() => roverDataSource.getRoverPhotos(any(), any(), any()))
          .thenThrow(Exception());

      final result = await roverRepositoryImpl.getRoverPhotos(
          CameraType.CHEMCAM, RoverType.Curiosity, 1);

      verify(() => roverDataSource.getRoverPhotos(any(), any(), any()))
          .called(1);
      expect(Failure(), result.error);
    });

    test('should return photos' ' when service succeed', () async {
      when(() => roverDataSource.getRoverPhotos(
            any(),
            any(),
            any(),
          )).thenAnswer(
        (_) async => [
          PhotoModel(id: 2),
        ],
      );

      final result = await roverRepositoryImpl.getRoverPhotos(
          CameraType.CHEMCAM, RoverType.Curiosity, 1);

      verify(() => roverDataSource.getRoverPhotos(
            any(),
            any(),
            any(),
          )).called(1);

      expect([Photo(2)], result.data);
    });
  });
}

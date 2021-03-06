// Mocks generated by Mockito 5.0.14 from annotations
// in eyes_of_rovers_tdd/test/application/usecases/rover_photos/get_rover_photos_by_filter_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:eyes_of_rovers_tdd/domain/core/data_result.dart' as _i2;
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/camera_type.dart'
    as _i6;
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/photo.dart'
    as _i5;
import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/rover_type.dart'
    as _i7;
import 'package:eyes_of_rovers_tdd/domain/rover_photos/repositories/rover_repository.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeDataResult_0<S> extends _i1.Fake implements _i2.DataResult<S> {}

/// A class which mocks [RoverRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockRoverRepository extends _i1.Mock implements _i3.RoverRepository {
  MockRoverRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.DataResult<List<_i5.Photo>>> getRoverPhotos(
          _i6.CameraType? cameraType,
          _i7.RoverType? roverType,
          int? pageIndex) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getRoverPhotos, [cameraType, roverType, pageIndex]),
              returnValue: Future<_i2.DataResult<List<_i5.Photo>>>.value(
                  _FakeDataResult_0<List<_i5.Photo>>()))
          as _i4.Future<_i2.DataResult<List<_i5.Photo>>>);
  @override
  String toString() => super.toString();
}

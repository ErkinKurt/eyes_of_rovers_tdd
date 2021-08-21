import 'dart:convert';

import 'package:eyes_of_rovers_tdd/domain/entities/photo.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/models/photo_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  group('PhotoModel', () {
    test('should convert from json to PhotoModel', () {
      final json = fixture(FixtureNames.ROVER_PHOTOS, FixtureNames.PHOTO);
      final jsonMap = jsonDecode(json);
      final expected = PhotoModel(id: 102693);

      final res = PhotoModel.fromJson(jsonMap);

      expect(expected.id, equals(res.id));
    });

    test(
        'should map to Photo'
        ' when toDomain is called', () {
      final photoModel = PhotoModel(id: 102);
      final photo = Photo(102);

      final result = photoModel.toDomain();

      expect(photo, result);
    });
  });
}

import 'dart:convert';

import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/models/rover_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  group('RoverModel', () {
    test('should convert json to RoverModel', () {
      //arrange
      final json = fixture(FixtureNames.ROVER_PHOTOS, FixtureNames.ROVER);
      final jsonMap = jsonDecode(json);
      final expectedRoverModel = RoverModel(id: 5);

      //act
      final roverModel = RoverModel.fromJson(jsonMap);

      //assert
      expect(expectedRoverModel.id, equals(roverModel.id));
    });
  });
}

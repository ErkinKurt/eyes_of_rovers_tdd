import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/models/photo_model.dart';

abstract class RoverService {
  Future<List<PhotoModel>> getPhotos();
}

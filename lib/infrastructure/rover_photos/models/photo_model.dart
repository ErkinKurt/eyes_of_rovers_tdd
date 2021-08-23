import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/photo.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/models/camera_model.dart';
import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/models/rover_model.dart';

import 'package:json_annotation/json_annotation.dart';

part 'photo_model.g.dart';

@JsonSerializable()
class PhotoModel {
  PhotoModel({
    this.id,
    this.sol,
    this.camera,
    this.imgSrc,
    this.earthDate,
    this.rover,
  });

  int? id;
  int? sol;
  CameraModel? camera;
  String? imgSrc;
  DateTime? earthDate;
  RoverModel? rover;

  factory PhotoModel.fromJson(Map<String, dynamic> json) => _$PhotoModelFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoModelToJson(this);

  static const fromJsonFactory = _$PhotoModelFromJson;

  Photo toDomain() {
    return Photo(id!);
  }
}

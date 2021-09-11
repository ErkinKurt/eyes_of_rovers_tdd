import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/models/camera_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rover_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RoverModel {
  RoverModel({
    this.id,
    this.name,
    this.landingDate,
    this.launchDate,
    this.status,
    this.maxSol,
    this.maxDate,
    this.totalPhotos,
    this.cameras,
  });

  int? id;
  String? name;
  DateTime? landingDate;
  DateTime? launchDate;
  String? status;
  int? maxSol;
  DateTime? maxDate;
  int? totalPhotos;
  List<CameraModel>? cameras;

  factory RoverModel.fromJson(Map<String, dynamic> json) =>
      _$RoverModelFromJson(json);
  Map<String, dynamic> toJson() => _$RoverModelToJson(this);
}

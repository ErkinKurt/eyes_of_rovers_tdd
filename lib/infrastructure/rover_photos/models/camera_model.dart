import 'package:eyes_of_rovers_tdd/domain/rover_photos/entities/camera.dart';
import 'package:json_annotation/json_annotation.dart';

part 'camera_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CameraModel {
  CameraModel({
    required this.name,
    required this.fullName,
  });

  final String name;
  final String fullName;

  Camera toDomain() {
    // Domain validation...
    return Camera(1);
  }

  factory CameraModel.fromJson(Map<String, dynamic> json) => _$CameraModelFromJson(json);

  Map<String, dynamic> toJson() => _$CameraModelToJson(this);
}

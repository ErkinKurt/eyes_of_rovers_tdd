import 'package:json_annotation/json_annotation.dart';

part 'camera_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CameraModel {
  CameraModel({
    required this.name,
    required this.fullName,
  });

  String name;
  String fullName;

  factory CameraModel.fromJson(Map<String, dynamic> json) => _$CameraModelFromJson(json);
  Map<String, dynamic> toJson() => _$CameraModelToJson(this);
}

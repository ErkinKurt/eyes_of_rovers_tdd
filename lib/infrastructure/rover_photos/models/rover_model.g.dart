// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rover_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoverModel _$RoverModelFromJson(Map<String, dynamic> json) {
  return RoverModel(
    id: json['id'] as int?,
    name: json['name'] as String?,
    landingDate: json['landing_date'] == null
        ? null
        : DateTime.parse(json['landing_date'] as String),
    launchDate: json['launch_date'] == null
        ? null
        : DateTime.parse(json['launch_date'] as String),
    status: json['status'] as String?,
    maxSol: json['max_sol'] as int?,
    maxDate: json['max_date'] == null
        ? null
        : DateTime.parse(json['max_date'] as String),
    totalPhotos: json['total_photos'] as int?,
    cameras: (json['cameras'] as List<dynamic>?)
        ?.map((e) => CameraModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RoverModelToJson(RoverModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'landing_date': instance.landingDate?.toIso8601String(),
      'launch_date': instance.launchDate?.toIso8601String(),
      'status': instance.status,
      'max_sol': instance.maxSol,
      'max_date': instance.maxDate?.toIso8601String(),
      'total_photos': instance.totalPhotos,
      'cameras': instance.cameras,
    };

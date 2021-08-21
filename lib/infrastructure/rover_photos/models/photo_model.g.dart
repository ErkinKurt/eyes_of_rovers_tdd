// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoModel _$PhotoModelFromJson(Map<String, dynamic> json) {
  return PhotoModel(
    id: json['id'] as int?,
    sol: json['sol'] as int?,
    camera: json['camera'] == null
        ? null
        : CameraModel.fromJson(json['camera'] as Map<String, dynamic>),
    imgSrc: json['imgSrc'] as String?,
    earthDate: json['earthDate'] == null
        ? null
        : DateTime.parse(json['earthDate'] as String),
    rover: json['rover'] == null
        ? null
        : RoverModel.fromJson(json['rover'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PhotoModelToJson(PhotoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sol': instance.sol,
      'camera': instance.camera,
      'imgSrc': instance.imgSrc,
      'earthDate': instance.earthDate?.toIso8601String(),
      'rover': instance.rover,
    };

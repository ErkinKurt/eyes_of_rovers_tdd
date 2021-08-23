// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rover_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$RoverService extends RoverService {
  _$RoverService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = RoverService;

  @override
  Future<Response<List<PhotoModel>>> getRoverPhotos(
      String cameraType, String roverType, int pageIndex) {
    final $url = '/rovers/$roverType/photos';
    final $params = <String, dynamic>{
      'camera_type': cameraType,
      'page': pageIndex
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<PhotoModel>, PhotoModel>($request);
  }
}

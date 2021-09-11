import 'package:eyes_of_rovers_tdd/infrastructure/rover_photos/models/photo_model.dart';

typedef T JsonFactory<T>(Map<String, dynamic> json);

class JsonTypeParser {
  static const Map<Type, JsonFactory> factories = {
    PhotoModel: PhotoModel.fromJsonFactory,
  };

  static dynamic decode<T>(entity) {
    if (entity is Iterable) return _decodeList<T>(entity);

    if (entity is Map<String, dynamic>) return _decodeMap<T>(entity);

    return entity;
  }

  static T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      /// throw serializer not found error;
      throw Exception();
    }

    return jsonFactory(values);
  }

  static List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v)).toList();
}

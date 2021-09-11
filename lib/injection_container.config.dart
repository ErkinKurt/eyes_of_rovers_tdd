// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:chopper/chopper.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/usecases/rover_photos/get_rover_photos_by_filter.dart'
    as _i10;
import 'domain/rover_photos/repositories/rover_repository.dart' as _i8;
import 'infrastructure/client/chopper_client_factory.dart' as _i6;
import 'infrastructure/client/converters/json_serializable_convertor.dart'
    as _i4;
import 'infrastructure/rover_photos/data_source/rover_data_source.dart' as _i7;
import 'infrastructure/rover_photos/rover_repository_impl.dart' as _i9;
import 'infrastructure/rover_photos/service/rover_service.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final chopperModule = _$ChopperModule();
  gh.factory<_i3.JsonConverter>(() => _i4.JsonSerializableConverter());
  gh.factory<_i5.RoverService>(
      () => _i5.RoverService.create(get<_i3.ChopperClient>()));
  gh.factory<String>(() => chopperModule.baseUrl, instanceName: 'BaseUrl');
  gh.factory<_i6.ChopperClientFactoryParams>(() =>
      _i6.ChopperClientFactoryParams(
          baseUrl: get<String>(instanceName: 'BaseUrl'),
          jsonConverter: get<_i3.JsonConverter>()));
  gh.factory<_i7.RoverDataSource>(
      () => _i7.RoverRemoteDataSource(get<_i5.RoverService>()));
  gh.factory<_i8.RoverRepository>(
      () => _i9.RoverRepositoryImpl(get<_i7.RoverDataSource>()));
  gh.factory<_i10.GetRoverPhotosByFilter>(
      () => _i10.GetRoverPhotosByFilter(get<_i8.RoverRepository>()));
  gh.singleton<_i3.ChopperClient>(chopperModule
      .chopperClientFactory(get<_i6.ChopperClientFactoryParams>()));
  return get;
}

class _$ChopperModule extends _i6.ChopperModule {}

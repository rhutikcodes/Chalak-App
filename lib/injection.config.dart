// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/cubit/auth_cubit.dart' as _i8;
import 'core/firebase_injection_module.dart' as _i11;
import 'data/auth/repository/firebase_auth_facade.dart' as _i5;
import 'data/home/repository/available_drivers_repository_impl.dart' as _i7;
import 'domain/auth/repository/i_auth_facade.dart' as _i4;
import 'domain/home/repository/i_available_drivers_repository.dart' as _i6;
import 'domain/home/usecase/get_available_driver_data.dart' as _i9;
import 'domain/home/usecase/get_available_driver_from_route.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.IAuthFacade>(
      () => _i5.FirebaseAuthFacade(get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i6.IAvailableDriversRepository>(
      () => _i7.AvailableDriversRepositoryImpl());
  gh.factory<_i8.AuthCubit>(() => _i8.AuthCubit(get<_i4.IAuthFacade>()));
  gh.factory<_i9.GetAvailableDriverData>(() => _i9.GetAvailableDriverData(
      availableDriversRepository: get<_i6.IAvailableDriversRepository>()));
  gh.factory<_i10.GetAvailableDriverFromRoute>(() =>
      _i10.GetAvailableDriverFromRoute(
          availableDriversRepository: get<_i6.IAvailableDriversRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i11.FirebaseInjectableModule {}

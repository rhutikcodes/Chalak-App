// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/cubit/auth_cubit.dart' as _i6;
import 'core/firebase_injection_module.dart' as _i7;
import 'data/auth/repository/firebase_auth_facade.dart' as _i5;
import 'domain/auth/repository/i_auth_facade.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i6.AuthCubit>(() => _i6.AuthCubit(get<_i4.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i7.FirebaseInjectableModule {}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/cubit/auth_cubit.dart' as _i11;
import 'core/firebase_injection_module.dart' as _i15;
import 'data/auth/repository/firebase_auth_facade.dart' as _i5;
import 'data/home/repository/available_drivers_repository_impl.dart' as _i7;
import 'data/home/repository/order_repository_imp.dart' as _i9;
import 'domain/auth/repository/i_auth_facade.dart' as _i4;
import 'domain/home/repository/i_available_drivers_repository.dart' as _i6;
import 'domain/home/repository/i_order_repository.dart' as _i8;
import 'domain/home/usecase/add_order_usecase.dart' as _i10;
import 'domain/home/usecase/get_available_driver_data.dart' as _i12;
import 'domain/home/usecase/get_available_driver_from_route.dart' as _i13;
import 'domain/home/usecase/get_bookings_usecase.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i8.IOrderRepository>(() => _i9.OrderRepositoryImp());
  gh.factory<_i10.AddOrderUsecase>(
      () => _i10.AddOrderUsecase(orderRepository: get<_i8.IOrderRepository>()));
  gh.factory<_i11.AuthCubit>(() => _i11.AuthCubit(get<_i4.IAuthFacade>()));
  gh.factory<_i12.GetAvailableDriverData>(() => _i12.GetAvailableDriverData(
      availableDriversRepository: get<_i6.IAvailableDriversRepository>()));
  gh.factory<_i13.GetAvailableDriverFromRoute>(() =>
      _i13.GetAvailableDriverFromRoute(
          availableDriversRepository: get<_i6.IAvailableDriversRepository>()));
  gh.factory<_i14.GetBookingsUsecase>(() =>
      _i14.GetBookingsUsecase(orderRepository: get<_i8.IOrderRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i15.FirebaseInjectableModule {}

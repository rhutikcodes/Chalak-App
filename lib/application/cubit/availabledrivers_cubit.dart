import 'package:bloc/bloc.dart';
import 'package:chalak_app/domain/home/entity/available_driver_entity.dart';
import 'package:chalak_app/domain/home/usecase/get_available_driver_data.dart';
import 'package:chalak_app/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/home/usecase/get_available_driver_from_route.dart';

part 'availabledrivers_state.dart';
part 'availabledrivers_cubit.freezed.dart';

class AvailabledriversCubit extends Cubit<AvailabledriversState> {
  AvailabledriversCubit() : super(const AvailabledriversState.initial());
  Future<List<AvailableDriverEntity>> getAvailableDrivers(String city) async {
    final List<AvailableDriverEntity> availableDriver =
        await getIt<GetAvailableDriverData>().call(city);
    if (availableDriver.isEmpty) {
      emit(const AvailabledriversState.failure());
    } else {
      emit(AvailabledriversState.loaded(availableDriver));
    }
    return availableDriver;
  }

  Future<List<AvailableDriverEntity>> getAvailableDriversFromRoute(
    String sourceCity,
    String destinationCity,
  ) async {
    final List<AvailableDriverEntity> availableDriver =
        await getIt<GetAvailableDriverFromRoute>()
            .call(sourceCity, destinationCity);
    if (availableDriver.isEmpty) {
      emit(const AvailabledriversState.failure());
    } else {
      emit(AvailabledriversState.loaded(availableDriver));
    }
    return availableDriver;
  }
}

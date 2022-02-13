part of 'availabledrivers_cubit.dart';

@freezed
class AvailabledriversState with _$AvailabledriversState {
  const factory AvailabledriversState.initial() = _Initial;
  const factory AvailabledriversState.loaded(
    List<AvailableDriverEntity> availableDrivers,
  ) = _Loaded;
  const factory AvailabledriversState.failure() = _Failure;
}

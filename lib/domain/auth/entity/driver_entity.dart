import 'package:chalak_app/domain/auth/entity/route_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'driver_entity.freezed.dart';
part 'driver_entity.g.dart';
@freezed
class DriverEntity with _$DriverEntity {
  const factory DriverEntity({
    required String name,
    required int age,
    required String truckNumber,
    required int mobileNumber,
    required int truckCapacity,
    required String transporterName,
    required int drivingExperience,
    required List<RouteEntity> interesetedRoutes
  }) = _DriverEntity;

  factory DriverEntity.fromJson(Map<String, dynamic> json) => _$DriverEntityFromJson(json);
}

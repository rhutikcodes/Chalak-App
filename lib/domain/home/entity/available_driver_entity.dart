import 'package:freezed_annotation/freezed_annotation.dart';
part 'available_driver_entity.freezed.dart';
part 'available_driver_entity.g.dart';

@freezed
class AvailableDriverEntity with _$AvailableDriverEntity {
  const factory AvailableDriverEntity({
    required String driverUid,
    required String driverName,
    required String source,
    required String destination,
  }) = _AvailableDriverEntity;

  factory AvailableDriverEntity.fromJson(Map<String, dynamic> json) =>
      _$AvailableDriverEntityFromJson(json);
}

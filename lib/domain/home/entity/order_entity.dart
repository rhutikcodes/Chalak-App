import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_entity.freezed.dart';
part 'order_entity.g.dart';

@freezed
class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    required String driverUid,
    required String dealerUid,
    required String name,
    required String source,
    required String destination,
    required String status,
  }) = _OrderEntity;
  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}

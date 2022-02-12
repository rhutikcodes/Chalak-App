import 'package:freezed_annotation/freezed_annotation.dart';
part 'route_entity.freezed.dart';
part 'route_entity.g.dart';
@freezed
class RouteEntity with _$RouteEntity {
  const factory RouteEntity({
    required String source,
    required String destination,
  }) = _RouteEntity;

  factory RouteEntity.fromJson(Map<String, dynamic> json) => _$RouteEntityFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
part 'dealer_entity.freezed.dart';
part 'dealer_entity.g.dart';
@freezed
class DealerEntity with _$DealerEntity {
  const factory DealerEntity(
    {
      required String name,
      required int mobileNumber,
      required String natureOfMaterial,
      required double weightOfMaterial,
      required int quantity,
      required String city,
      required String state,
    }
  ) = _DealerEntity;
  factory DealerEntity.fromJson(Map<String, dynamic> json) => _$DealerEntityFromJson(json);
}
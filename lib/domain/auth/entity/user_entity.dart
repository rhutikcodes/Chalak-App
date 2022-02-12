import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String name,
    required int age,
    required String truckNumber,
    required int mobileNumber,
    required int truckCapacity,
    required String transporterName,
    required int drivingExperience,
    required String natureOfMaterial,
    required double weightOfMaterial,
    required int quantity,
    required String city,
    required String userType,
    required String uid,
    required String email,
    required String password,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}

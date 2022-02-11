// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverEntity _$$_DriverEntityFromJson(Map<String, dynamic> json) =>
    _$_DriverEntity(
      name: json['name'] as String,
      age: json['age'] as int,
      truckNumber: json['truckNumber'] as String,
      mobileNumber: json['mobileNumber'] as int,
      truckCapacity: json['truckCapacity'] as int,
      transporterName: json['transporterName'] as String,
      drivingExperience: json['drivingExperience'] as int,
      interesetedRoutes: (json['interesetedRoutes'] as List<dynamic>)
          .map((e) => RouteEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DriverEntityToJson(_$_DriverEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'truckNumber': instance.truckNumber,
      'mobileNumber': instance.mobileNumber,
      'truckCapacity': instance.truckCapacity,
      'transporterName': instance.transporterName,
      'drivingExperience': instance.drivingExperience,
      'interesetedRoutes': instance.interesetedRoutes,
    };

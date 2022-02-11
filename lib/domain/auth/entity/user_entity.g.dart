// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$$_UserEntityFromJson(Map<String, dynamic> json) =>
    _$_UserEntity(
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
      natureOfMaterial: json['natureOfMaterial'] as String,
      weightOfMaterial: (json['weightOfMaterial'] as num).toDouble(),
      quantity: json['quantity'] as int,
      city: json['city'] as String,
      state: json['state'] as String,
      userType: json['userType'] as String,
    );

Map<String, dynamic> _$$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'truckNumber': instance.truckNumber,
      'mobileNumber': instance.mobileNumber,
      'truckCapacity': instance.truckCapacity,
      'transporterName': instance.transporterName,
      'drivingExperience': instance.drivingExperience,
      'interesetedRoutes': instance.interesetedRoutes,
      'natureOfMaterial': instance.natureOfMaterial,
      'weightOfMaterial': instance.weightOfMaterial,
      'quantity': instance.quantity,
      'city': instance.city,
      'state': instance.state,
      'userType': instance.userType,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dealer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DealerEntity _$$_DealerEntityFromJson(Map<String, dynamic> json) =>
    _$_DealerEntity(
      name: json['name'] as String,
      mobileNumber: json['mobileNumber'] as int,
      natureOfMaterial: json['natureOfMaterial'] as String,
      weightOfMaterial: (json['weightOfMaterial'] as num).toDouble(),
      quantity: json['quantity'] as int,
      city: json['city'] as String,
      state: json['state'] as String,
    );

Map<String, dynamic> _$$_DealerEntityToJson(_$_DealerEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mobileNumber': instance.mobileNumber,
      'natureOfMaterial': instance.natureOfMaterial,
      'weightOfMaterial': instance.weightOfMaterial,
      'quantity': instance.quantity,
      'city': instance.city,
      'state': instance.state,
    };

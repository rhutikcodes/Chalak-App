// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderEntity _$$_OrderEntityFromJson(Map<String, dynamic> json) =>
    _$_OrderEntity(
      driverUid: json['driverUid'] as String,
      dealerUid: json['dealerUid'] as String,
      name: json['name'] as String,
      source: json['source'] as String,
      destination: json['destination'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_OrderEntityToJson(_$_OrderEntity instance) =>
    <String, dynamic>{
      'driverUid': instance.driverUid,
      'dealerUid': instance.dealerUid,
      'name': instance.name,
      'source': instance.source,
      'destination': instance.destination,
      'status': instance.status,
    };

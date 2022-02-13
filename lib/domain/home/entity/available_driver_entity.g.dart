// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_driver_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AvailableDriverEntity _$$_AvailableDriverEntityFromJson(
        Map<String, dynamic> json) =>
    _$_AvailableDriverEntity(
      driverUid: json['driverUid'] as String,
      driverName: json['driverName'] as String,
      source: json['source'] as String,
      destination: json['destination'] as String,
    );

Map<String, dynamic> _$$_AvailableDriverEntityToJson(
        _$_AvailableDriverEntity instance) =>
    <String, dynamic>{
      'driverUid': instance.driverUid,
      'driverName': instance.driverName,
      'source': instance.source,
      'destination': instance.destination,
    };

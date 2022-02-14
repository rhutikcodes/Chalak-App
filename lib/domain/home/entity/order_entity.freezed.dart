// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) {
  return _OrderEntity.fromJson(json);
}

/// @nodoc
class _$OrderEntityTearOff {
  const _$OrderEntityTearOff();

  _OrderEntity call(
      {required String driverUid,
      required String dealerUid,
      required String name,
      required String source,
      required String destination,
      required String status,
      required String orderId}) {
    return _OrderEntity(
      driverUid: driverUid,
      dealerUid: dealerUid,
      name: name,
      source: source,
      destination: destination,
      status: status,
      orderId: orderId,
    );
  }

  OrderEntity fromJson(Map<String, Object?> json) {
    return OrderEntity.fromJson(json);
  }
}

/// @nodoc
const $OrderEntity = _$OrderEntityTearOff();

/// @nodoc
mixin _$OrderEntity {
  String get driverUid => throw _privateConstructorUsedError;
  String get dealerUid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res>;
  $Res call(
      {String driverUid,
      String dealerUid,
      String name,
      String source,
      String destination,
      String status,
      String orderId});
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res> implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  final OrderEntity _value;
  // ignore: unused_field
  final $Res Function(OrderEntity) _then;

  @override
  $Res call({
    Object? driverUid = freezed,
    Object? dealerUid = freezed,
    Object? name = freezed,
    Object? source = freezed,
    Object? destination = freezed,
    Object? status = freezed,
    Object? orderId = freezed,
  }) {
    return _then(_value.copyWith(
      driverUid: driverUid == freezed
          ? _value.driverUid
          : driverUid // ignore: cast_nullable_to_non_nullable
              as String,
      dealerUid: dealerUid == freezed
          ? _value.dealerUid
          : dealerUid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OrderEntityCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$OrderEntityCopyWith(
          _OrderEntity value, $Res Function(_OrderEntity) then) =
      __$OrderEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String driverUid,
      String dealerUid,
      String name,
      String source,
      String destination,
      String status,
      String orderId});
}

/// @nodoc
class __$OrderEntityCopyWithImpl<$Res> extends _$OrderEntityCopyWithImpl<$Res>
    implements _$OrderEntityCopyWith<$Res> {
  __$OrderEntityCopyWithImpl(
      _OrderEntity _value, $Res Function(_OrderEntity) _then)
      : super(_value, (v) => _then(v as _OrderEntity));

  @override
  _OrderEntity get _value => super._value as _OrderEntity;

  @override
  $Res call({
    Object? driverUid = freezed,
    Object? dealerUid = freezed,
    Object? name = freezed,
    Object? source = freezed,
    Object? destination = freezed,
    Object? status = freezed,
    Object? orderId = freezed,
  }) {
    return _then(_OrderEntity(
      driverUid: driverUid == freezed
          ? _value.driverUid
          : driverUid // ignore: cast_nullable_to_non_nullable
              as String,
      dealerUid: dealerUid == freezed
          ? _value.dealerUid
          : dealerUid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderEntity implements _OrderEntity {
  const _$_OrderEntity(
      {required this.driverUid,
      required this.dealerUid,
      required this.name,
      required this.source,
      required this.destination,
      required this.status,
      required this.orderId});

  factory _$_OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$$_OrderEntityFromJson(json);

  @override
  final String driverUid;
  @override
  final String dealerUid;
  @override
  final String name;
  @override
  final String source;
  @override
  final String destination;
  @override
  final String status;
  @override
  final String orderId;

  @override
  String toString() {
    return 'OrderEntity(driverUid: $driverUid, dealerUid: $dealerUid, name: $name, source: $source, destination: $destination, status: $status, orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderEntity &&
            const DeepCollectionEquality().equals(other.driverUid, driverUid) &&
            const DeepCollectionEquality().equals(other.dealerUid, dealerUid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.orderId, orderId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(driverUid),
      const DeepCollectionEquality().hash(dealerUid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(destination),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(orderId));

  @JsonKey(ignore: true)
  @override
  _$OrderEntityCopyWith<_OrderEntity> get copyWith =>
      __$OrderEntityCopyWithImpl<_OrderEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderEntityToJson(this);
  }
}

abstract class _OrderEntity implements OrderEntity {
  const factory _OrderEntity(
      {required String driverUid,
      required String dealerUid,
      required String name,
      required String source,
      required String destination,
      required String status,
      required String orderId}) = _$_OrderEntity;

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$_OrderEntity.fromJson;

  @override
  String get driverUid;
  @override
  String get dealerUid;
  @override
  String get name;
  @override
  String get source;
  @override
  String get destination;
  @override
  String get status;
  @override
  String get orderId;
  @override
  @JsonKey(ignore: true)
  _$OrderEntityCopyWith<_OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

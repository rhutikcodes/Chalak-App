// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'available_driver_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AvailableDriverEntity _$AvailableDriverEntityFromJson(
    Map<String, dynamic> json) {
  return _AvailableDriverEntity.fromJson(json);
}

/// @nodoc
class _$AvailableDriverEntityTearOff {
  const _$AvailableDriverEntityTearOff();

  _AvailableDriverEntity call(
      {required String driverUid,
      required String driverName,
      required String source,
      required String destination}) {
    return _AvailableDriverEntity(
      driverUid: driverUid,
      driverName: driverName,
      source: source,
      destination: destination,
    );
  }

  AvailableDriverEntity fromJson(Map<String, Object?> json) {
    return AvailableDriverEntity.fromJson(json);
  }
}

/// @nodoc
const $AvailableDriverEntity = _$AvailableDriverEntityTearOff();

/// @nodoc
mixin _$AvailableDriverEntity {
  String get driverUid => throw _privateConstructorUsedError;
  String get driverName => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableDriverEntityCopyWith<AvailableDriverEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableDriverEntityCopyWith<$Res> {
  factory $AvailableDriverEntityCopyWith(AvailableDriverEntity value,
          $Res Function(AvailableDriverEntity) then) =
      _$AvailableDriverEntityCopyWithImpl<$Res>;
  $Res call(
      {String driverUid, String driverName, String source, String destination});
}

/// @nodoc
class _$AvailableDriverEntityCopyWithImpl<$Res>
    implements $AvailableDriverEntityCopyWith<$Res> {
  _$AvailableDriverEntityCopyWithImpl(this._value, this._then);

  final AvailableDriverEntity _value;
  // ignore: unused_field
  final $Res Function(AvailableDriverEntity) _then;

  @override
  $Res call({
    Object? driverUid = freezed,
    Object? driverName = freezed,
    Object? source = freezed,
    Object? destination = freezed,
  }) {
    return _then(_value.copyWith(
      driverUid: driverUid == freezed
          ? _value.driverUid
          : driverUid // ignore: cast_nullable_to_non_nullable
              as String,
      driverName: driverName == freezed
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AvailableDriverEntityCopyWith<$Res>
    implements $AvailableDriverEntityCopyWith<$Res> {
  factory _$AvailableDriverEntityCopyWith(_AvailableDriverEntity value,
          $Res Function(_AvailableDriverEntity) then) =
      __$AvailableDriverEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String driverUid, String driverName, String source, String destination});
}

/// @nodoc
class __$AvailableDriverEntityCopyWithImpl<$Res>
    extends _$AvailableDriverEntityCopyWithImpl<$Res>
    implements _$AvailableDriverEntityCopyWith<$Res> {
  __$AvailableDriverEntityCopyWithImpl(_AvailableDriverEntity _value,
      $Res Function(_AvailableDriverEntity) _then)
      : super(_value, (v) => _then(v as _AvailableDriverEntity));

  @override
  _AvailableDriverEntity get _value => super._value as _AvailableDriverEntity;

  @override
  $Res call({
    Object? driverUid = freezed,
    Object? driverName = freezed,
    Object? source = freezed,
    Object? destination = freezed,
  }) {
    return _then(_AvailableDriverEntity(
      driverUid: driverUid == freezed
          ? _value.driverUid
          : driverUid // ignore: cast_nullable_to_non_nullable
              as String,
      driverName: driverName == freezed
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvailableDriverEntity implements _AvailableDriverEntity {
  const _$_AvailableDriverEntity(
      {required this.driverUid,
      required this.driverName,
      required this.source,
      required this.destination});

  factory _$_AvailableDriverEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableDriverEntityFromJson(json);

  @override
  final String driverUid;
  @override
  final String driverName;
  @override
  final String source;
  @override
  final String destination;

  @override
  String toString() {
    return 'AvailableDriverEntity(driverUid: $driverUid, driverName: $driverName, source: $source, destination: $destination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AvailableDriverEntity &&
            const DeepCollectionEquality().equals(other.driverUid, driverUid) &&
            const DeepCollectionEquality()
                .equals(other.driverName, driverName) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(driverUid),
      const DeepCollectionEquality().hash(driverName),
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(destination));

  @JsonKey(ignore: true)
  @override
  _$AvailableDriverEntityCopyWith<_AvailableDriverEntity> get copyWith =>
      __$AvailableDriverEntityCopyWithImpl<_AvailableDriverEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailableDriverEntityToJson(this);
  }
}

abstract class _AvailableDriverEntity implements AvailableDriverEntity {
  const factory _AvailableDriverEntity(
      {required String driverUid,
      required String driverName,
      required String source,
      required String destination}) = _$_AvailableDriverEntity;

  factory _AvailableDriverEntity.fromJson(Map<String, dynamic> json) =
      _$_AvailableDriverEntity.fromJson;

  @override
  String get driverUid;
  @override
  String get driverName;
  @override
  String get source;
  @override
  String get destination;
  @override
  @JsonKey(ignore: true)
  _$AvailableDriverEntityCopyWith<_AvailableDriverEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dealer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DealerEntity _$DealerEntityFromJson(Map<String, dynamic> json) {
  return _DealerEntity.fromJson(json);
}

/// @nodoc
class _$DealerEntityTearOff {
  const _$DealerEntityTearOff();

  _DealerEntity call(
      {required String name,
      required int mobileNumber,
      required String natureOfMaterial,
      required double weightOfMaterial,
      required int quantity,
      required String city,
      required String state}) {
    return _DealerEntity(
      name: name,
      mobileNumber: mobileNumber,
      natureOfMaterial: natureOfMaterial,
      weightOfMaterial: weightOfMaterial,
      quantity: quantity,
      city: city,
      state: state,
    );
  }

  DealerEntity fromJson(Map<String, Object?> json) {
    return DealerEntity.fromJson(json);
  }
}

/// @nodoc
const $DealerEntity = _$DealerEntityTearOff();

/// @nodoc
mixin _$DealerEntity {
  String get name => throw _privateConstructorUsedError;
  int get mobileNumber => throw _privateConstructorUsedError;
  String get natureOfMaterial => throw _privateConstructorUsedError;
  double get weightOfMaterial => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealerEntityCopyWith<DealerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealerEntityCopyWith<$Res> {
  factory $DealerEntityCopyWith(
          DealerEntity value, $Res Function(DealerEntity) then) =
      _$DealerEntityCopyWithImpl<$Res>;
  $Res call(
      {String name,
      int mobileNumber,
      String natureOfMaterial,
      double weightOfMaterial,
      int quantity,
      String city,
      String state});
}

/// @nodoc
class _$DealerEntityCopyWithImpl<$Res> implements $DealerEntityCopyWith<$Res> {
  _$DealerEntityCopyWithImpl(this._value, this._then);

  final DealerEntity _value;
  // ignore: unused_field
  final $Res Function(DealerEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? mobileNumber = freezed,
    Object? natureOfMaterial = freezed,
    Object? weightOfMaterial = freezed,
    Object? quantity = freezed,
    Object? city = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as int,
      natureOfMaterial: natureOfMaterial == freezed
          ? _value.natureOfMaterial
          : natureOfMaterial // ignore: cast_nullable_to_non_nullable
              as String,
      weightOfMaterial: weightOfMaterial == freezed
          ? _value.weightOfMaterial
          : weightOfMaterial // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DealerEntityCopyWith<$Res>
    implements $DealerEntityCopyWith<$Res> {
  factory _$DealerEntityCopyWith(
          _DealerEntity value, $Res Function(_DealerEntity) then) =
      __$DealerEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      int mobileNumber,
      String natureOfMaterial,
      double weightOfMaterial,
      int quantity,
      String city,
      String state});
}

/// @nodoc
class __$DealerEntityCopyWithImpl<$Res> extends _$DealerEntityCopyWithImpl<$Res>
    implements _$DealerEntityCopyWith<$Res> {
  __$DealerEntityCopyWithImpl(
      _DealerEntity _value, $Res Function(_DealerEntity) _then)
      : super(_value, (v) => _then(v as _DealerEntity));

  @override
  _DealerEntity get _value => super._value as _DealerEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? mobileNumber = freezed,
    Object? natureOfMaterial = freezed,
    Object? weightOfMaterial = freezed,
    Object? quantity = freezed,
    Object? city = freezed,
    Object? state = freezed,
  }) {
    return _then(_DealerEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as int,
      natureOfMaterial: natureOfMaterial == freezed
          ? _value.natureOfMaterial
          : natureOfMaterial // ignore: cast_nullable_to_non_nullable
              as String,
      weightOfMaterial: weightOfMaterial == freezed
          ? _value.weightOfMaterial
          : weightOfMaterial // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DealerEntity implements _DealerEntity {
  const _$_DealerEntity(
      {required this.name,
      required this.mobileNumber,
      required this.natureOfMaterial,
      required this.weightOfMaterial,
      required this.quantity,
      required this.city,
      required this.state});

  factory _$_DealerEntity.fromJson(Map<String, dynamic> json) =>
      _$$_DealerEntityFromJson(json);

  @override
  final String name;
  @override
  final int mobileNumber;
  @override
  final String natureOfMaterial;
  @override
  final double weightOfMaterial;
  @override
  final int quantity;
  @override
  final String city;
  @override
  final String state;

  @override
  String toString() {
    return 'DealerEntity(name: $name, mobileNumber: $mobileNumber, natureOfMaterial: $natureOfMaterial, weightOfMaterial: $weightOfMaterial, quantity: $quantity, city: $city, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DealerEntity &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality()
                .equals(other.natureOfMaterial, natureOfMaterial) &&
            const DeepCollectionEquality()
                .equals(other.weightOfMaterial, weightOfMaterial) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(natureOfMaterial),
      const DeepCollectionEquality().hash(weightOfMaterial),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$DealerEntityCopyWith<_DealerEntity> get copyWith =>
      __$DealerEntityCopyWithImpl<_DealerEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealerEntityToJson(this);
  }
}

abstract class _DealerEntity implements DealerEntity {
  const factory _DealerEntity(
      {required String name,
      required int mobileNumber,
      required String natureOfMaterial,
      required double weightOfMaterial,
      required int quantity,
      required String city,
      required String state}) = _$_DealerEntity;

  factory _DealerEntity.fromJson(Map<String, dynamic> json) =
      _$_DealerEntity.fromJson;

  @override
  String get name;
  @override
  int get mobileNumber;
  @override
  String get natureOfMaterial;
  @override
  double get weightOfMaterial;
  @override
  int get quantity;
  @override
  String get city;
  @override
  String get state;
  @override
  @JsonKey(ignore: true)
  _$DealerEntityCopyWith<_DealerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

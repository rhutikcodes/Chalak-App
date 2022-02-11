// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'route_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RouteEntity _$RouteEntityFromJson(Map<String, dynamic> json) {
  return _RouteEntity.fromJson(json);
}

/// @nodoc
class _$RouteEntityTearOff {
  const _$RouteEntityTearOff();

  _RouteEntity call({required String state, required String city}) {
    return _RouteEntity(
      state: state,
      city: city,
    );
  }

  RouteEntity fromJson(Map<String, Object?> json) {
    return RouteEntity.fromJson(json);
  }
}

/// @nodoc
const $RouteEntity = _$RouteEntityTearOff();

/// @nodoc
mixin _$RouteEntity {
  String get state => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteEntityCopyWith<RouteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteEntityCopyWith<$Res> {
  factory $RouteEntityCopyWith(
          RouteEntity value, $Res Function(RouteEntity) then) =
      _$RouteEntityCopyWithImpl<$Res>;
  $Res call({String state, String city});
}

/// @nodoc
class _$RouteEntityCopyWithImpl<$Res> implements $RouteEntityCopyWith<$Res> {
  _$RouteEntityCopyWithImpl(this._value, this._then);

  final RouteEntity _value;
  // ignore: unused_field
  final $Res Function(RouteEntity) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RouteEntityCopyWith<$Res>
    implements $RouteEntityCopyWith<$Res> {
  factory _$RouteEntityCopyWith(
          _RouteEntity value, $Res Function(_RouteEntity) then) =
      __$RouteEntityCopyWithImpl<$Res>;
  @override
  $Res call({String state, String city});
}

/// @nodoc
class __$RouteEntityCopyWithImpl<$Res> extends _$RouteEntityCopyWithImpl<$Res>
    implements _$RouteEntityCopyWith<$Res> {
  __$RouteEntityCopyWithImpl(
      _RouteEntity _value, $Res Function(_RouteEntity) _then)
      : super(_value, (v) => _then(v as _RouteEntity));

  @override
  _RouteEntity get _value => super._value as _RouteEntity;

  @override
  $Res call({
    Object? state = freezed,
    Object? city = freezed,
  }) {
    return _then(_RouteEntity(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RouteEntity implements _RouteEntity {
  const _$_RouteEntity({required this.state, required this.city});

  factory _$_RouteEntity.fromJson(Map<String, dynamic> json) =>
      _$$_RouteEntityFromJson(json);

  @override
  final String state;
  @override
  final String city;

  @override
  String toString() {
    return 'RouteEntity(state: $state, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RouteEntity &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  _$RouteEntityCopyWith<_RouteEntity> get copyWith =>
      __$RouteEntityCopyWithImpl<_RouteEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RouteEntityToJson(this);
  }
}

abstract class _RouteEntity implements RouteEntity {
  const factory _RouteEntity({required String state, required String city}) =
      _$_RouteEntity;

  factory _RouteEntity.fromJson(Map<String, dynamic> json) =
      _$_RouteEntity.fromJson;

  @override
  String get state;
  @override
  String get city;
  @override
  @JsonKey(ignore: true)
  _$RouteEntityCopyWith<_RouteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

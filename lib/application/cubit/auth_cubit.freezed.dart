// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Authenticated authenticated({required UserEntity userEntity}) {
    return _Authenticated(
      userEntity: userEntity,
    );
  }

  _IncompleteSignUp incompleteSignUp({required UserEntity userEntity}) {
    return _IncompleteSignUp(
      userEntity: userEntity,
    );
  }

  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

  _Failure failure({required String message}) {
    return _Failure(
      message: message,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserEntity userEntity) authenticated,
    required TResult Function(UserEntity userEntity) incompleteSignUp,
    required TResult Function() unauthenticated,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserEntity userEntity)? authenticated,
    TResult Function(UserEntity userEntity)? incompleteSignUp,
    TResult Function()? unauthenticated,
    TResult Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserEntity userEntity)? authenticated,
    TResult Function(UserEntity userEntity)? incompleteSignUp,
    TResult Function()? unauthenticated,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_IncompleteSignUp value) incompleteSignUp,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_IncompleteSignUp value)? incompleteSignUp,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_IncompleteSignUp value)? incompleteSignUp,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserEntity userEntity) authenticated,
    required TResult Function(UserEntity userEntity) incompleteSignUp,
    required TResult Function() unauthenticated,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserEntity userEntity)? authenticated,
    TResult Function(UserEntity userEntity)? incompleteSignUp,
    TResult Function()? unauthenticated,
    TResult Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserEntity userEntity)? authenticated,
    TResult Function(UserEntity userEntity)? incompleteSignUp,
    TResult Function()? unauthenticated,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_IncompleteSignUp value) incompleteSignUp,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_IncompleteSignUp value)? incompleteSignUp,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_IncompleteSignUp value)? incompleteSignUp,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({UserEntity userEntity});

  $UserEntityCopyWith<$Res> get userEntity;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object? userEntity = freezed,
  }) {
    return _then(_Authenticated(
      userEntity: userEntity == freezed
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  @override
  $UserEntityCopyWith<$Res> get userEntity {
    return $UserEntityCopyWith<$Res>(_value.userEntity, (value) {
      return _then(_value.copyWith(userEntity: value));
    });
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated({required this.userEntity});

  @override
  final UserEntity userEntity;

  @override
  String toString() {
    return 'AuthState.authenticated(userEntity: $userEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Authenticated &&
            const DeepCollectionEquality()
                .equals(other.userEntity, userEntity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userEntity));

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserEntity userEntity) authenticated,
    required TResult Function(UserEntity userEntity) incompleteSignUp,
    required TResult Function() unauthenticated,
    required TResult Function(String message) failure,
  }) {
    return authenticated(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserEntity userEntity)? authenticated,
    TResult Function(UserEntity userEntity)? incompleteSignUp,
    TResult Function()? unauthenticated,
    TResult Function(String message)? failure,
  }) {
    return authenticated?.call(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserEntity userEntity)? authenticated,
    TResult Function(UserEntity userEntity)? incompleteSignUp,
    TResult Function()? unauthenticated,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(userEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_IncompleteSignUp value) incompleteSignUp,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Failure value) failure,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_IncompleteSignUp value)? incompleteSignUp,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Failure value)? failure,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_IncompleteSignUp value)? incompleteSignUp,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated({required UserEntity userEntity}) =
      _$_Authenticated;

  UserEntity get userEntity;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IncompleteSignUpCopyWith<$Res> {
  factory _$IncompleteSignUpCopyWith(
          _IncompleteSignUp value, $Res Function(_IncompleteSignUp) then) =
      __$IncompleteSignUpCopyWithImpl<$Res>;
  $Res call({UserEntity userEntity});

  $UserEntityCopyWith<$Res> get userEntity;
}

/// @nodoc
class __$IncompleteSignUpCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$IncompleteSignUpCopyWith<$Res> {
  __$IncompleteSignUpCopyWithImpl(
      _IncompleteSignUp _value, $Res Function(_IncompleteSignUp) _then)
      : super(_value, (v) => _then(v as _IncompleteSignUp));

  @override
  _IncompleteSignUp get _value => super._value as _IncompleteSignUp;

  @override
  $Res call({
    Object? userEntity = freezed,
  }) {
    return _then(_IncompleteSignUp(
      userEntity: userEntity == freezed
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  @override
  $UserEntityCopyWith<$Res> get userEntity {
    return $UserEntityCopyWith<$Res>(_value.userEntity, (value) {
      return _then(_value.copyWith(userEntity: value));
    });
  }
}

/// @nodoc

class _$_IncompleteSignUp implements _IncompleteSignUp {
  const _$_IncompleteSignUp({required this.userEntity});

  @override
  final UserEntity userEntity;

  @override
  String toString() {
    return 'AuthState.incompleteSignUp(userEntity: $userEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IncompleteSignUp &&
            const DeepCollectionEquality()
                .equals(other.userEntity, userEntity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userEntity));

  @JsonKey(ignore: true)
  @override
  _$IncompleteSignUpCopyWith<_IncompleteSignUp> get copyWith =>
      __$IncompleteSignUpCopyWithImpl<_IncompleteSignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserEntity userEntity) authenticated,
    required TResult Function(UserEntity userEntity) incompleteSignUp,
    required TResult Function() unauthenticated,
    required TResult Function(String message) failure,
  }) {
    return incompleteSignUp(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserEntity userEntity)? authenticated,
    TResult Function(UserEntity userEntity)? incompleteSignUp,
    TResult Function()? unauthenticated,
    TResult Function(String message)? failure,
  }) {
    return incompleteSignUp?.call(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserEntity userEntity)? authenticated,
    TResult Function(UserEntity userEntity)? incompleteSignUp,
    TResult Function()? unauthenticated,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (incompleteSignUp != null) {
      return incompleteSignUp(userEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_IncompleteSignUp value) incompleteSignUp,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Failure value) failure,
  }) {
    return incompleteSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_IncompleteSignUp value)? incompleteSignUp,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Failure value)? failure,
  }) {
    return incompleteSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_IncompleteSignUp value)? incompleteSignUp,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (incompleteSignUp != null) {
      return incompleteSignUp(this);
    }
    return orElse();
  }
}

abstract class _IncompleteSignUp implements AuthState {
  const factory _IncompleteSignUp({required UserEntity userEntity}) =
      _$_IncompleteSignUp;

  UserEntity get userEntity;
  @JsonKey(ignore: true)
  _$IncompleteSignUpCopyWith<_IncompleteSignUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

/// @nodoc

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserEntity userEntity) authenticated,
    required TResult Function(UserEntity userEntity) incompleteSignUp,
    required TResult Function() unauthenticated,
    required TResult Function(String message) failure,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserEntity userEntity)? authenticated,
    TResult Function(UserEntity userEntity)? incompleteSignUp,
    TResult Function()? unauthenticated,
    TResult Function(String message)? failure,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserEntity userEntity)? authenticated,
    TResult Function(UserEntity userEntity)? incompleteSignUp,
    TResult Function()? unauthenticated,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_IncompleteSignUp value) incompleteSignUp,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Failure value) failure,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_IncompleteSignUp value)? incompleteSignUp,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Failure value)? failure,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_IncompleteSignUp value)? incompleteSignUp,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Failure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserEntity userEntity) authenticated,
    required TResult Function(UserEntity userEntity) incompleteSignUp,
    required TResult Function() unauthenticated,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserEntity userEntity)? authenticated,
    TResult Function(UserEntity userEntity)? incompleteSignUp,
    TResult Function()? unauthenticated,
    TResult Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserEntity userEntity)? authenticated,
    TResult Function(UserEntity userEntity)? incompleteSignUp,
    TResult Function()? unauthenticated,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_IncompleteSignUp value) incompleteSignUp,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_IncompleteSignUp value)? incompleteSignUp,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_IncompleteSignUp value)? incompleteSignUp,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AuthState {
  const factory _Failure({required String message}) = _$_Failure;

  String get message;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

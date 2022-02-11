part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated({required UserEntity userEntity}) =
      _Authenticated;
  const factory AuthState.incompleteSignUp({required UserEntity userEntity}) =
      _IncompleteSignUp;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.failure({required String message}) = _Failure;
}

import 'package:chalak_app/domain/auth/entity/auth_failure.dart';
import 'package:chalak_app/domain/auth/entity/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithEmail(
    String email,
    String password,
  );
  Future<Either<AuthFailure, Unit>> createNewAccount(
    String email,
    String password,
  );
  Future<Option<UserEntity>> getSignedInUser();
  Future<void> signOut();
  Future<bool> isSignIn();
}

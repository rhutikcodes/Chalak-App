import 'package:chalak_app/domain/auth/entity/auth_failure.dart';
import 'package:chalak_app/domain/auth/entity/dealer_entity.dart';
import 'package:chalak_app/domain/auth/entity/driver_entity.dart';
import 'package:dartz/dartz.dart';



abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithEmail();
  Future<Either<DealerEntity, DriverEntity>> getSignedInUser();
  Future<void> signOut();
  Future<bool> isSignIn();
}

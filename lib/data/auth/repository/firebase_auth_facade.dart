import 'package:chalak_app/core/database.dart';
import 'package:chalak_app/domain/auth/entity/auth_failure.dart';
import 'package:chalak_app/domain/auth/entity/user_entity.dart';
import 'package:chalak_app/domain/auth/repository/i_auth_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthFacade(this._firebaseAuth);

  @override
  Future<bool> isSignIn() async => _firebaseAuth.currentUser?.uid != null;

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmail(
    String mEmail,
    String mPassword,
  ) async {
    try {
      final UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: mEmail, password: mPassword);
      final User? user = userCredential.user;
      final String? email = user!.email;
      final String? displayName = user.displayName;
      final String uid = user.uid;
      if (!(await Database().doesUserExist(uid))) {
        await Database().createFirebaseUser(
          email: email,
          name: displayName,
          uid: user.uid,
        );
      }
      return right(unit);
    } on FirebaseAuthException catch (e) {
      Logger().e(e.message);
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => _firebaseAuth.signOut();

  @override
  Future<Either<AuthFailure, Unit>> createNewAccount(
    String mEmail,
    String mPassword,
  ) async {
    try {
      final UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: mEmail, password: mPassword);
      final User? user = userCredential.user;
      final String? email = user!.email;
      final String? displayName = user.displayName;
      final String uid = user.uid;
      if (!(await Database().doesUserExist(uid))) {
        await Database().createFirebaseUser(
          email: email,
          name: displayName,
          uid: user.uid,
        );
      }
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<UserEntity>> getSignedInUser() async =>
      optionOf(await _firebaseAuth.currentUser?.toDomain());
}

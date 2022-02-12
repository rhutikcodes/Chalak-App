import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:chalak_app/core/database.dart';
import 'package:chalak_app/domain/auth/entity/user_entity.dart';
import 'package:chalak_app/domain/auth/repository/i_auth_facade.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:email_auth/email_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../domain/auth/entity/auth_failure.dart';
import '../../domain/auth/entity/route_entity.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@Injectable()
class AuthCubit extends Cubit<AuthState> {
  final IAuthFacade _authFacade;

  AuthCubit(this._authFacade) : super(const AuthState.loading());
  Future<void> handleAppStarted() async {
    Logger().i('AuthCubit->handleAppStarted');
    try {
      final isSignIn = await _authFacade.isSignIn();
      if (isSignIn) {
        Logger().i('user is signed in');
        final userEntityGetOrElse = await _authFacade.getSignedInUser();
        userEntityGetOrElse.fold(
          () async {
            emit(const AuthState.unauthenticated());
          },
          (userEntity) async {
            if (userEntity.city == 'city' ||
                userEntity.userType == 'userType') {
              Logger().i('incomplete signup');
              emit(AuthState.incompleteSignUp(userEntity: userEntity));
            } else {
              Logger().i('User signed in');
              emit(AuthState.authenticated(userEntity: userEntity));
            }
          },
        );
      } else {
        Logger().i('User not signed in');
        emit(const AuthState.unauthenticated());
      }
    } on SocketException catch (e) {
      Logger().i('User not signed in socket exception ${e.message}');
      emit(const AuthState.unauthenticated());
    }
  }

  Future<void> sendOtp(String email) async {
    final EmailAuth emailAuth = EmailAuth(sessionName: "Chalak App");
    await emailAuth.sendOtp(
      recipientMail: email,
      otpLength: 4,
    );
  }

  Future<bool> validateOtp(String email, String otp) async {
    final EmailAuth emailAuth = EmailAuth(sessionName: "Chalak App");
    final bool response =
        emailAuth.validateOtp(recipientMail: email, userOtp: otp);
    return response;
  }

  Future<void> logOut() async {
    try {
      emit(const AuthState.unauthenticated());
      await _authFacade.signOut();
      Logger().i('user logged out manually');
    } on SocketException catch (e) {
      Logger().i('User not logged out socket exception ${e.message}');
      emit(const AuthState.unauthenticated());
    }
  }

  Future<void> handleIncompleteSignUp({
    required String? email,
    required String? uid,
    required String name,
    required int? age,
    required String? truckNumber,
    required int? mobileNumber,
    required int? truckCapacity,
    required String? transporterName,
    required int? drivingExperience,
    required String? natureOfMaterial,
    required double? weightOfMaterial,
    required int? quantity,
    required String? city,
    required String userType,
  }) async {
    final UserEntity userEntity = await Database().saveIncompletSignUp(
      email: email,
      city: city,
      name: name,
      age: age,
      truckNumber: truckNumber,
      mobileNumber: mobileNumber,
      truckCapacity: truckCapacity,
      transporterName: transporterName,
      drivingExperience: drivingExperience,
      natureOfMaterial: natureOfMaterial,
      weightOfMaterial: weightOfMaterial,
      quantity: quantity,
      userType: userType,
      uid: uid,
    );
    Logger().i('Database Saved incomplete data');
    emit(AuthState.authenticated(userEntity: userEntity));
  }

  Future<Either<AuthFailure, Unit>> signInWithEmail(
    String email,
    String password,
  ) async {
    final failureOrSuccess = await _authFacade.signInWithEmail(email, password);
    return failureOrSuccess.fold((l) async {
      Logger().i('Sign in with email failed');
      emit(const AuthState.unauthenticated());
      return left(const AuthFailure.serverError());
    }, (r) async {
      await handleAppStarted();
      Logger().i('Sign in with email successful');
      return right(r);
    });
  }

  Future<void> saveJourneyData(
    List<RouteEntity> listOfRoutes,
    String driverUid,
    String driverName,
  ) async {
    print(listOfRoutes.length);
    // ignore: avoid_function_literals_in_foreach_calls
    listOfRoutes.forEach((route) async {
      print('saving ${route.source}');
      await FirebaseFirestore.instance
          .collection('journey')
          .doc('${route.source} - ${route.destination}')
          .set({
        'source': route.source,
        'destination': route.destination,
      });
      print('saving ${route.source} interested dirver');
      await FirebaseFirestore.instance
          .collection('journey')
          .doc('${route.source}, ${route.destination}')
          .collection('interested_drivers')
          .add({
        'uid': driverUid,
        'driverName': driverName,
      });
    });
  }

  Future<void> createNewAccount(String email, String password) async {
    final failureOrSuccess =
        await _authFacade.createNewAccount(email, password);
    failureOrSuccess.fold((l) async {
      Logger().i('failed to create new account');
      emit(const AuthState.unauthenticated());
    }, (r) async {
      await handleAppStarted();
      Logger().i('accout created successfully');
    });
  }
}

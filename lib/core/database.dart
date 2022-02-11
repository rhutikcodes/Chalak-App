import 'package:chalak_app/domain/auth/entity/user_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';

class Database {
  String collection = "users";

  Future<String> createFirebaseUser({
    required String? email,
    required String? name,
    required String? uid,
  }) async {
    String returnVal = "error";

    try {
      FirebaseFirestore.instance.collection(collection).doc(uid).set(
        {
          "email": email,
          "uid": uid,
          "name": name ?? "name",
          "age": 0,
          "truckNumber": "truckNumber",
          "mobileNumber": 0,
          "truckCapacity": 0,
          "transporterName": "transporterName",
          "drivingExperience": 0,
          "natureOfMaterial": "natureOfMaterial",
          "weightOfMaterial": 0,
          "quantity": 0,
          "city": 'city',
          "state": "state",
          "userType": "userType",
        },
        SetOptions(merge: true),
      );

      returnVal = "success";
    } catch (e) {
      returnVal = e.toString();
    }
    return returnVal;
  }

  Future<UserEntity> getUserById(String? uid) async {
    final snapshot =
        await FirebaseFirestore.instance.collection(collection).doc(uid).get();
    final UserEntity userModel = UserEntity.fromJson(snapshot.data()!);
    return userModel;
  }

  Future<UserEntity> saveIncompletSignUp({
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
    required String? state,
    required String userType,
  }) async {
    
    FirebaseFirestore.instance.collection(collection).doc(uid).set(
      {
        "email": email!.replaceAll(RegExp(r"\s\b|\b\s"), "").toLowerCase(),
        "city": city,
        "name": name,
        "age": age,
        "truckNumber": truckNumber,
        "mobileNumber": mobileNumber,
        "truckCapacity": truckCapacity,
        "transporterName": transporterName,
        "drivingExperience": drivingExperience,
        "natureOfMaterial": natureOfMaterial,
        "weightOfMaterial": weightOfMaterial,
        "quantity": quantity,
        "state": state,
        "userType": userType,
      },
      SetOptions(merge: true),
    );
    Logger().i('Signup completed. Firestore data saved');
    return getUserById(uid);
  }

  Future<bool> doesUserExist(String? uid) async => FirebaseFirestore.instance
      .collection(collection)
      .doc(uid)
      .get()
      .then((value) => value.exists);
}

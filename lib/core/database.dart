import 'package:chalak_app/domain/auth/entity/user_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
          "interesetedRoutes": "interestedRoutes",
          "natureOfMaterial": "natureOfMaterial",
          "weightOfMaterial": 0,
          "quantity": 0,
          "city": 'city',
          "state": "state",
          "userType": "dealer",
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

  Future<bool> doesUserExist(String? uid) async => FirebaseFirestore.instance
      .collection(collection)
      .doc(uid)
      .get()
      .then((value) => value.exists);
}

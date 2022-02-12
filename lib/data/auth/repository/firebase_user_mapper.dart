import 'package:chalak_app/domain/auth/entity/user_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

extension FirebaseUserDomainX on firebase.User {
  Future<UserEntity> toDomain() async {
    final snapshot =
        await FirebaseFirestore.instance.collection('users').doc(uid).get();
    final UserEntity userEntity = UserEntity.fromJson(snapshot.data()!);
    return userEntity;
  }
}

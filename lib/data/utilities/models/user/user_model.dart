import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:product_app/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    final String? email,
    final String? uid,
  }) : super(
          uid: uid,
          email: email,
        );

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot) {
    return UserModel(
      uid: documentSnapshot.get('uid'),
      email: documentSnapshot.get('email'),
    );
  }

  Map<String, dynamic> toDocument() {
    return {"uid": uid, "email": email, "name": name};
  }
}

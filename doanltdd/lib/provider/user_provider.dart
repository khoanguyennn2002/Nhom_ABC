import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/user_object.dart';

Future addUserDetails(UserObject user, uid) async {
  final docUser = FirebaseFirestore.instance.collection('users').doc(uid);
  final json = user.toJson();
  await docUser.set(json);
}

Future<UserObject?> getUser(uid) async {
  final docUser = FirebaseFirestore.instance.collection('users').doc(uid);
  final snapshot = await docUser.get();

  if (snapshot.exists) {
    return UserObject.fromJson(snapshot.data()!);
  }
}

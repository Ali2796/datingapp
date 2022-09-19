import 'package:cloud_firestore/cloud_firestore.dart';


class DbHandler{
  static CollectionReference studentCollectionWithUID(String userUID) {
    return FirebaseFirestore.instance
        .collection('SuperAdmins')
        .doc(userUID).collection('Student');
  }
}
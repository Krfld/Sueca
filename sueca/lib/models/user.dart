import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String id;
  final String name;

  User(
    this.id,
    this.name,
  );

  //TODO changte map to firestore document
  factory User.fromDoc(DocumentSnapshot doc) {
    return User(doc.id, '');
  }
}

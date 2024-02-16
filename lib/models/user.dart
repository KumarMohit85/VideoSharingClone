// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String name;
  String email;
  String profilePic;
  String uid;
  User({
    required this.name,
    required this.email,
    required this.profilePic,
    required this.uid,
  });

  Map<String, dynamic> toJson() =>
      {"name": name, "email": email, "profilePic": profilePic, "uid": uid};

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
        name: snapshot['name'],
        email: snapshot['email'],
        profilePic: snapshot['profilePic'],
        uid: snapshot['uid']);
  }
}

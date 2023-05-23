import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login_app/firestore/model/treat.dart';
import 'package:login_app/models/treat_category.dart';

import '../utility/parser.dart';

Stream<QuerySnapshot> streamEvents() {
  return FirebaseFirestore.instance.collection('treats').snapshots();
}

Stream<QuerySnapshot> streamPlannedTreats() {
  return FirebaseFirestore.instance
      .collection('users')
      .doc("1")
      .collection("treat_planned")
      .snapshots();
}

Stream<QuerySnapshot> streamCheckedInTreats() {
  return FirebaseFirestore.instance
      .collection('users')
      .doc("1")
      .collection("treat_history")
      .doc(dateToMonthId())
      .collection("checked_in")
      .snapshots();
}

Future<void> addTreat() {
  TreatDto treatDto = TreatDto(null, "Default treat",
      "assets/treats/self-love.png", TreatCategory.other);
  CollectionReference treats = FirebaseFirestore.instance.collection('treats');
  return treats
      .add(treatDto.toMap())
      .then((value) => print("Treat Added"))
      .catchError((error) => print("Failed to add treat: $error"));
}

// Future<void> updateUser() {
//   CollectionReference users = FirebaseFirestore.instance.collection('users');
//   return users
//       .doc("1")
//       .set({
//         'full_name': "kaka", // John Doe
//         'company': "company", // Stokes and Sons
//       })
//       .then((value) => print("User Added"))
//       .catchError((error) => print("Failed to add user: $error"));
// }

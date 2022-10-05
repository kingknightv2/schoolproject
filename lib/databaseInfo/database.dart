import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Database {

  // add the data

  Future addData(String name, String last, String phone, String email, String id, String pass) async {
    Map<String,String> datastore = {
      'First name' : name,
      'Last name' : last,
      'phone Number' : phone,
      'Email': email,
      'Id': id,
      'Password': pass
    };
    await FirebaseFirestore.instance.collection('users').doc(email).set(datastore);
  }

  // get the data
  void getDatalist(String email) {
      final ref = FirebaseFirestore.instance.collection('users').doc(email);
      ref.get().then((DocumentSnapshot doc) { 
        final data = doc.data() as Map<String, dynamic>;
        print(data);
      });
  }

}

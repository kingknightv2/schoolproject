import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Database {
  final time = DateTime.now();
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

  Future addMessage(String message, String email) async{
    
    await FirebaseFirestore.instance.collection('Messeges').doc().set( {
      'Messeage': message,
      'email': email
    });
  }

  Future DeleteMessages() async {
    var messages = FirebaseFirestore.instance.collection('Messeges');
    var snapshots = await messages.get();
    for (var doc in snapshots.docs) {
      
      await doc.reference.delete();
    }
  }

  Stream<QuerySnapshot> returnedMessages() {
    Stream<QuerySnapshot> message = FirebaseFirestore.instance.collection('Messeges').snapshots();
    return message;
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

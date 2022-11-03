import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'databaseInfo/database.dart';

class ChatBox extends StatefulWidget {
  final Useremail;
  const ChatBox({super.key, this.Useremail});


  @override
  State<ChatBox> createState() => _ChatBoxState(Useremail);
}

class _ChatBoxState extends State<ChatBox> {
  final firebaseMessage = FirebaseFirestore.instance;
  TextEditingController messageController = new TextEditingController();
  Database b = new Database();

  final Useremail;
  _ChatBoxState(this.Useremail);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            
            child: MessagesOutput(email : Useremail),
          ),
          
          Row(children: [
            Expanded(child: Container(child: TextField(
              controller: messageController,
              decoration: InputDecoration(
                filled: true,
                hintText: "Enter Text"
              ),
            ),) ),
            IconButton(
              onPressed: () {

                
                if(messageController.text.trim() != "") {
                  b.addMessage(messageController.text.trim(), Useremail);
                  messageController.clear();
                }
                

                // b.getDatalist(Useremail);
                // print(Useremail);
                // print(messageController.text.trim());
            }, icon: Icon(Icons.send))
          ],),
         
      ]),
    );
  }
}


class MessagesOutput extends StatelessWidget {
  final email;
  MessagesOutput({this.email});

  Database b = new Database();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: b.returnedMessages(),
      builder: (context, snapshot) {
        return ListView.builder(
          itemCount: snapshot.data!.docs.length,
          physics: ScrollPhysics(),
          shrinkWrap: true,
          primary: true,
          itemBuilder: ((context, index) {
            QueryDocumentSnapshot temp = snapshot.data!.docs[index];
            return ListTile(
              title: 
              Column(children: [
                Text(temp['Messeage'])],
                crossAxisAlignment: email == temp['email']?CrossAxisAlignment.end:CrossAxisAlignment.start,
                ),
              subtitle: Text(temp['email']),
              
              
              
            );
        }));
      });
      
      
  }
}
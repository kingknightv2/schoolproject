import 'dart:io';
import 'package:booska/chat_page.dart';
import 'package:booska/databaseInfo/database.dart';
import 'package:booska/example_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'databaseInfo/database.dart';
import 'example_buttons.dart';

class HomePage extends StatefulWidget {
  
  final val;
  const HomePage({super.key, this.val});

  @override
  State<HomePage> createState() => _HomePageState(val);
}

class _HomePageState extends State<HomePage> {
  Database t = new Database();
  String val;
  _HomePageState(this.val);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Booska Fitness'),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {
                Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ChatBox(Useremail : val)));
            }, icon: const Icon(
              Icons.message
            ))
          ],
        ),
        body: Center(
          
          child: (Column(
          children: <Widget>[
                  Image.asset('assets/images/homepageGym.png',
                  height: 196,
                  width: 396,
              // color: Color.fromARGB(255, 15, 147, 59),
                  ), //Image.asset
                  // Image.asset('assets/images/back/pull_up_back.jpg',
                  // height: 300,
                  // width: 300,
                  //   ),
                  Container(
                  margin: EdgeInsets.all(20),
                  child: ElevatedButton(
                        onPressed: () {
                            // Respond to button press
                             Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FirstRoute()));
                        },
                        child: Text('Workout Page'),
                      ),
                ),
                 Container(
                  margin: EdgeInsets.all(20),
                  child: TextButton(
                    child: IconButton(
                      onPressed: () {
                         
                      },  
                      icon: Icon(Icons.camera_alt),
                    ),
                    onPressed: () {
                     // do not use 
                    },
                  ),
                ),
          ]))
          
          
          ),
        

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            FirebaseAuth.instance.signOut().then((value) {
              exit(0);
            });
          },
        ),
       
        
        
        
    );
  }
}

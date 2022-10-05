import 'dart:io';
import 'package:booska/databaseInfo/database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'databaseInfo/database.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Database t = new Database();
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sample Code'),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.green,
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => ChatPage()));
            }, icon: const Icon(
              Icons.message
            ))
          ],
        ),
        body: Center(child: Text('You have pressed the button $_count times.')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            FirebaseAuth.instance.signOut().then((value) {
              exit(0);
            });
          },
        ));
  }
}

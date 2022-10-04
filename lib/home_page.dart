import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sample Code'),
          automaticallyImplyLeading: false,
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

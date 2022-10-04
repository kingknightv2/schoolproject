import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListViewExample()));
}

class ListViewExample extends StatelessWidget {
  @override
  final data = [
    "Abs",
    "Back",
    "Biceps",
    "Triceps",
    "Legs",
    "Shoulders",
    "Glutes",
    "Chest"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Exercises'),
      ),
      body: Center(
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 150,
                  color: Colors.white,
                  child: Center(child: Text('${data[index]}')),
                );
              })),
    );
  }
}

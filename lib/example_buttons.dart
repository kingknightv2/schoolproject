import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Types of Exercises',
    home: FirstRoute(),
  ));
}
  class FirstRoute extends StatelessWidget{
    const FirstRoute({super.key});
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Types of Exercises'),
          ),
          body: Center(
              child: Column(children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextButton(
                    child: Text(
                      'Abs',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder:(context) => const SecondRoute()),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextButton(
                    child: Text(
                      'Back',
                      style: TextStyle(fontSize: 15.0),
                    ),


                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder:(context) => const SecondRoute()),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextButton(
                    child: Text(
                      'Shoulders',
                      style: TextStyle(fontSize: 15.0),
                    ),


                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder:(context) => const SecondRoute()),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextButton(
                    child: Text(
                      'Chest',
                      style: TextStyle(fontSize: 15.0),
                    ),


                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder:(context) => const SecondRoute()),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextButton(
                    child: Text(
                      'Biceps',
                      style: TextStyle(fontSize: 15.0),
                    ),


                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder:(context) => const SecondRoute()),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextButton(
                    child: Text(
                      'Triceps',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder:(context) => const SecondRoute()),
                      );
                    },
                  ),
                ),

                      Container(
                        margin: EdgeInsets.all(20),
                        child: TextButton(
                          child: Text(
                            'Legs',
                            style: TextStyle(fontSize: 15.0),
                          ),

                          onPressed: () {
                            Navigator.push(context,
                              MaterialPageRoute(builder:(context) => const SecondRoute()),
                            );
                          },
                        ),
                      ),

                Container(
                  margin: EdgeInsets.all(20),
                  child: TextButton(
                    child: Text(
                      'Glutes',
                      style: TextStyle(fontSize: 15.0),
                    ),


                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder:(context) => const SecondRoute()),
                      );
                    },
                  ),
                ),

              ]))),
    );
  }
}
class SecondRoute extends StatelessWidget{
  const SecondRoute({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Exercises'),
      ),
      );
  }
}

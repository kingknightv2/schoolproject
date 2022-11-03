import 'package:booska/home_page.dart';
import 'package:flutter/material.dart';


  class FirstRoute extends StatelessWidget{
    const FirstRoute({super.key});
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
          leading:
            IconButton(onPressed: () {
                 Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()));
            }, icon: Icon(Icons.arrow_back))
          ,
          title: const Text('Workouts'),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
          centerTitle: true,
         
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
                        MaterialPageRoute(builder:(context) => const Abs_Exercises()),
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
                        MaterialPageRoute(builder:(context) => const Back_Exercises()),
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
                        MaterialPageRoute(builder:(context) => const Shoulder_Exercises()),
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
                        MaterialPageRoute(builder:(context) => const Chest_Exercises()),
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
                        MaterialPageRoute(builder:(context) => const Biceps_Exercises()),
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
                        MaterialPageRoute(builder:(context) => const Tricep_Exercises()),
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
                              MaterialPageRoute(builder:(context) => const Leg_Exercises()),
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
                          MaterialPageRoute(builder:(context) => const Glute_Exercises()),
                      );
                    },
                  ),
                ),

              ]))),
    );
  }
}

//  FOR BACK EXERCISES
class Back_Exercises extends StatelessWidget{
  const Back_Exercises({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Back Exercises'),
      ),
    body: Center(
    child: Column(
    children: <Widget>[
    Image.asset('assets/images/back/back_exercises.gif',
    height: 200,
    scale: 2.5,
// color: Color.fromARGB(255, 15, 147, 59),
    ), //Image.asset
    Image.asset('assets/images/back/pull_up_back.jpg',
    height: 300,
    width: 300,
      ),
      Image.asset('assets/images/back/super_man_back.jpg',
        height: 200,
        width: 200,
      )
    ],
    ),
    ),
    );
  }
}
//  FOR BACK EXERCISES
class Abs_Exercises extends StatelessWidget{
  const Abs_Exercises({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Abdominal Muscle Exercises'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/abs/abs_exericse2.jpg',
              height: 200,
              scale: 2.5,
// color: Color.fromARGB(255, 15, 147, 59),
            ), //Image.asset
            Image.asset('assets/images/abs/plank_abs.png',
              height: 300,
              width: 300,
            ),
          ],
        ),
      ),
    );
  }
}
//FOR BICEPS
class Biceps_Exercises extends StatelessWidget{
  const Biceps_Exercises({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Bicep Exercises'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/biceps/biceps_2.gif',
              height: 220,
              scale: 2.5,
// color: Color.fromARGB(255, 15, 147, 59),
            ), //Image.asset
            Image.asset('assets/images/biceps/bicep_curl.gif',
              height: 220,
              scale: 2.5,
            ),
            Image.asset('assets/images/biceps/Bicep-Curl_Exercise.jpg',
              height: 200,
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}

//TIME FOR CHEST
class Chest_Exercises extends StatelessWidget{
  const Chest_Exercises({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Chest Exercises'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/chest/chest-incline-dumbbellpress.jpg',
              height: 200,
              width: 200,
// color: Color.fromARGB(255, 15, 147, 59),
            ), //Image.asset
            Image.asset('assets/images/chest/upper_chest.gif',
              height: 300,
              scale: 2.5,
            ),
            Image.asset('assets/images/chest/lateral_raise.png',
              height: 200,
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}

//TIME FOR GLUTES
class Glute_Exercises extends StatelessWidget{
  const Glute_Exercises({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Glute Exercises'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/glutes/cable_kickback.jpg',
              height: 200,
              width: 300,
// color: Color.fromARGB(255, 15, 147, 59),
            ), //Image.asset
            Image.asset('assets/images/glutes/hip-thrust-weighted.gif',
              height: 300,
              scale: 2.5,
            ),
            Image.asset('assets/images/glutes/glutes.jpg',
              height: 200,
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
//TIME FOR LEGS

class Leg_Exercises extends StatelessWidget{
  const Leg_Exercises({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Leg Exercises'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/legs/legs_gif.gif',
              height: 200,
              scale: 2.5,
// color: Color.fromARGB(255, 15, 147, 59),
            ), //Image.asset
            Image.asset('assets/images/legs/goblet_squat.jpg',
              height: 200,
              width: 200,
            ),
            Image.asset('assets/images/legs/legs_step.jpg',
              height: 200,
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
//TIME FOR SHOULDERS

class Shoulder_Exercises extends StatelessWidget{
  const Shoulder_Exercises({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Shoulder Exercises'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/shoulder/shoulder-press-seated-shoulder-press.gif',
              height: 200,
              scale: 2.5,
// color: Color.fromARGB(255, 15, 147, 59),
            ), //Image.asset
            Image.asset('assets/images/shoulder/Shoulde.jpg',
              height: 200,
              width: 200,
            ),
            Image.asset('assets/images/shoulder/6-Dumbbell-Lateral-Raise.jpg',
              height: 200,
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
//TIME FOR TRICEPS
class Tricep_Exercises extends StatelessWidget{
  const Tricep_Exercises({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Tricep Exercises'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/triceps/overhead-tricep-extension.gif',
              height: 200,
              scale: 2.5,
// color: Color.fromARGB(255, 15, 147, 59),
            ), //Image.asset
            Image.asset('assets/images/triceps/How-to-do-a-Tricep-Extension.jpg',
              height: 200,
              width: 200,
            ),
            Image.asset('assets/images/triceps/tricep-rope-pulldown.gif',
              height: 200,
              scale: 2.5,
            )

          ],
        ),
      ),
    );
  }
}




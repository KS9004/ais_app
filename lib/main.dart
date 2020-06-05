import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Automated Irrigation System',
      theme: ThemeData(


        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Welcome_Screen(),
    );
  }
}

class Welcome_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end:Alignment.topLeft,
              colors: [Color.fromRGBO(28, 31, 52, 1),Color.fromRGBO(6, 139, 255, 1)],
            ),
          ),
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.only(top:50.0,),
                child: Text("Welcome!",style: TextStyle(
                  color: Colors.white,
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mania',
                ),),
              ),
              Text("To Automated Irrigation System",style: TextStyle(
                color: Colors.white54,
              ),
              ),
              SizedBox(
                height: 80.0,
              ),
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.pink,

                child: MaterialButton(onPressed: null,
                  minWidth: MediaQuery.of(context).size.width/2.5,
                  padding: EdgeInsets.all(5.0),

                  child: Text("Get Started",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    fontFamily: 'Mania'
                  ),),
                ),
              )
            ],
          ),
      ),
      ),
    );
  }
}

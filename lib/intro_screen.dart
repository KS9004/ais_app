import 'package:ais_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
class Intro_Screen extends StatelessWidget {
  static String id ='intro_screen';
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
                  fontFamily: 'Roboto',
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
                color: Colors.pink,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5,
                child: MaterialButton(
                  onPressed: (){
                    Navigator.pushNamed(context, WelcomeScreen.id);
                  },
                  child: Text("Get Started",
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      )),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

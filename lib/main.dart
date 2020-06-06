import 'package:ais_app/intro_screen.dart';
import 'package:ais_app/screens/login_screen.dart';
import 'package:ais_app/screens/registration_screen.dart';
import 'package:ais_app/screens/welcome_screen.dart';
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
      initialRoute: Intro_Screen.id,
      routes: {
        Intro_Screen.id:(context)=>Intro_Screen(),
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        RegistrationScreen.id:(context)=>RegistrationScreen(),
      },
    );
  }
}


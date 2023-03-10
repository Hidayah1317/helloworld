import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/Home.dart';
import 'package:helloworld/Splash.dart';

//import 'Home.dart';
import 'Profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        splash: 
            Text(
              "Hello World",
              style: TextStyle(
                fontSize: 80,
                fontFamily: 'Font1',
                fontWeight: FontWeight.bold,
              ),
            ),
        duration: 3000,
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.yellow,
        nextScreen: Home(),
      ),
    );
  }
}


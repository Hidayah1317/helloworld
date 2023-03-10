import 'package:flutter/material.dart';
import 'package:helloworld/Profile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 237, 142, 173),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My Profile",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Font2",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePageUI()));
                },
                child: Text("Here"))
            ]
          ),
        ),
      ),
    );
  }
}

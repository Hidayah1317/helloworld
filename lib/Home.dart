import 'package:flutter/material.dart';
import 'package:helloworld/Profile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello World"),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePageUI()));
                },
                child: Text("Profile"))
            ]
          ),
        ),
      ),
    );
  }
}

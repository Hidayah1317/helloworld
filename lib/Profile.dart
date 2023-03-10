import 'package:flutter/material.dart';

class ProfilePageUI extends StatefulWidget {
  @override
  _ProfilePageUIState createState() => _ProfilePageUIState();
}

class _ProfilePageUIState extends State<ProfilePageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.pink,
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/stitch.png'),
                      ),
                      Positioned(
                          bottom: 3,
                          right: 2,
                          child: CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 10,
                            child: Icon(Icons.edit),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Nurul Hidayah binti Jemat",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Universiti Pendidikan Sultan Idris ",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              child: Column(
                children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    "User Information",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Font2',
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text("Name"),
                  subtitle: Text("Nurul Hidayah binrti Jemat"),
                  leading: Icon(Icons.badge),
                ),
                ListTile(
                  title: Text("Date of Birth"),
                  subtitle: Text("13 March 1998"),
                  leading: Icon(Icons.calendar_month_outlined),
                ),
                ListTile(
                  title: Text("Address"),
                  subtitle: Text("201 Kpg Sageng, 94800 Simunjan, Sarawak"),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  title: Text("Location"),
                  subtitle: Text("Julytech Sdn. Bhd."),
                  leading: Icon(Icons.location_on),
                ),
                ListTile(
                  title: Text("Email"),
                  subtitle: Text("hidayah230323@gmail.com"),
                  leading: Icon(Icons.email),
                ),
                ListTile(
                  title: Text("Phone"),
                  subtitle: Text("+60138771276"),
                  leading: Icon(Icons.phone),
                ),
              ]),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.facebook_outlined,
                        size: 50,
                        color: Colors.blue,
                      ),
                      Text("/nurulhidayah.jemat"),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.wechat_outlined,
                        size: 50,
                        color: Colors.green,
                      ),
                      Text("hidayah13")
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.tiktok_outlined,
                        size: 50,
                        color: Colors.black,
                      ),
                      Text("@hidayahr23")
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

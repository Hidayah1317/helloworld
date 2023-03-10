import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePageUI extends StatefulWidget {
  @override
  _ProfilePageUIState createState() => _ProfilePageUIState();
}

class _ProfilePageUIState extends State<ProfilePageUI> {

  _launchurlfb() async {
    const url = "https://www.facebook.com/nurulhidayah.jemat?mibextid=ZbWKwL";
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url, forceWebView: true);
    } else {
      throw "Could not launch the url";
    }
  }
    _launchurlwechat() async {
    const url = "https://instagram.com/nh230323?igshid=ZDdkNTZiNTM=";
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url, forceWebView: true);
    } else {
      throw "Could not launch the url";
    }
  }
    _launchurltiktok() async {
    const url = "https://www.tiktok.com/@hidayahr23?_r=1&_d=e00b3bbhe9a9am&language=en&sec_uid=MS4wLjABAAAA9OJDFZ8HT42RIHrx1crbUuTlVKHxO9GWg_wkGPb6P6KKKJ1qkGeVX0FOLA2XDUOg&share_author_id=7107818890000712705&source=h5_t&u_code=e27jd4lf8ke22a&timestamp=1678437000&user_id=7107818890000712705&sec_user_id=MS4wLjABAAAA9OJDFZ8HT42RIHrx1crbUuTlVKHxO9GWg_wkGPb6P6KKKJ1qkGeVX0FOLA2XDUOg&utm_source=whatsapp&utm_campaign=client_share&utm_medium=android&share_iid=7205155911622166298&share_link_id=b904cafe-af62-4577-936b-c8224335994b&share_app_id=1180&ugbiz_name=Account&ug_btm=b8727%2Cb4907";
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url, forceWebView: true);
    } else {
      throw "Could not launch the url";
    }
  }

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
              child: Column(children: <Widget>[
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
                      IconButton(
                        icon: Icon(
                          Icons.facebook_outlined,
                          size: 50,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          _launchurlfb();
                        },
                      ),
                      Text("\nFacebook"),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.wechat_outlined,
                          size: 50,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          _launchurlwechat();
                        },
                      ),
                      Text("\nWechat")
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.tiktok_outlined,
                          size: 50,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          _launchurltiktok();
                        },
                      ),
                      Text("\nTikTok")
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

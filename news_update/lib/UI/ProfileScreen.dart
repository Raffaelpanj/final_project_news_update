import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScrn extends StatefulWidget {
  const ProfileScrn({Key? key}) : super(key: key);

  @override
  _ProfileScrnState createState() => _ProfileScrnState();
}

class _ProfileScrnState extends State<ProfileScrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff13294b),
        title: Center(
          child:
              const Text('My Profile', style: TextStyle(color: Colors.white)),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff13294b), Colors.white],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.0, 1.0],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      minRadius: 60.0,
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundImage:
                            AssetImage("assets/images/profile.png"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Raffael',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Mobile Developer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: SizedBox(
                    width: 45,
                    height: 45,
                    child: Image.asset("assets/images/gmail.png"),
                  ),
                  title: Text(
                    'Email',
                    style: TextStyle(
                      color: Color(0xff13294b),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'theochristian151@gmail.com',
                    style: TextStyle(fontSize: 18, color: Color(0xff132415)),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: SizedBox(
                    width: 48,
                    height: 48,
                    child: Image.asset("assets/images/github.png"),
                  ),
                  title: Text(
                    'GitHub',
                    style: TextStyle(
                      color: Color(0xff13294b),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'https://github.com/Raffaelpanj',
                    style: TextStyle(fontSize: 18, color: Color(0xff132415)),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: SizedBox(
                    width: 48,
                    height: 48,
                    child: Image.asset("assets/images/link.png"),
                  ),
                  title: Text(
                    'Linkedin',
                    style: TextStyle(
                      color: Color(0xff13294b),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'https://www.linkedin.com/in/raffael-4b6a5a220/',
                    style: TextStyle(fontSize: 18, color: Color(0xff132415)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

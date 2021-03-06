import 'package:TodoApp/screens/newAudio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  final _auth = FirebaseAuth.instance;
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(top:30, left: 18),
            leading: Icon(Icons.cloud_upload, color: Color(0xff092E34)),
            title: Text("Upload Your Podcast"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewAudio(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Color(0xff092E34)),
            title: Text("Sign Out"),
            onTap: () async {
              await _auth.signOut();
            },
          ),
        ],
      ),
    );
  }
  
}

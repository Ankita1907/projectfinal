import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final uid = FirebaseAuth.instance.currentUser!.uid;
  final email = FirebaseAuth.instance.currentUser!.email;
  final creationTime = FirebaseAuth.instance.currentUser!.metadata.creationTime;

  User? user = FirebaseAuth.instance.currentUser;

  verifyEmail() async {
    if (user != null && !user!.emailVerified) {
      await user!.sendEmailVerification();
      print('Verification Email has been sent');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.orangeAccent,
          content: Text(
            'Verification Email has been sent',
            style: TextStyle(fontSize: 18.0, color: Colors.black),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              CircleAvatar(
                backgroundColor: Colors.white70,
                minRadius: 60.0,
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage:
                  NetworkImage('https://avatars0.githubusercontent.com/u/28812093?s=460&u=06471c90e03cfd8ce2855d217d157c93060da490&v=4'),
                ),
              ),

            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Email:',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent,
            ),
          ),
          Text(
            '$email',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Text(
            'User Id:',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent,
            ),
          ),
          Text(
            '$uid',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15,
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Text(
            'Created On:',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent,
            ),
          ),
          Text(
            '$creationTime',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15,
            ),
          ),
        ],
      ),

    );
  }
}

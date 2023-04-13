import 'package:cognitive_app/age_select.dart';
import 'package:cognitive_app/user/Demo.dart';
import 'package:cognitive_app/user/Settings/settings.dart';
//import 'package:cognitive_app/user/log_out.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Demo(),
    Settings(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Main Menu"),
        ),
        body: Center(

            child: Column(children: <Widget>[
          Container(

            width: MediaQuery.of(context).size.width / 2,
            color: Colors.deepPurpleAccent,
            margin: EdgeInsets.all(50),
            child: FlatButton(
              child: Text(
                'Demo',
                style: TextStyle(fontSize: 30.0),
              ),
              //color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Demo(),
                  ),
                );
              },
            ),
          ),
          Container(

            width: MediaQuery.of(context).size.width / 2,
            color: Colors.deepPurpleAccent,
            margin: const EdgeInsets.symmetric(
                horizontal: 30, vertical: 10),
            child: FlatButton(
              child: Text(
                'Play',
                style: TextStyle(fontSize: 30.0),
              ),
              //color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AgeSelect(),
                  ),
                );
              },
            ),
          ),
        ])));
  }
}

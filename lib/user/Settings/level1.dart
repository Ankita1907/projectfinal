import 'package:flutter/material.dart';
import 'age1.dart';

class level1 extends StatefulWidget {
  level1({Key? key}) : super(key: key);

  @override
  _level1State createState() => _level1State();
}

class _level1State extends State<level1> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    age1(),
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
            margin: EdgeInsets.all(50),
            child: FlatButton(
              child: Text(
                'AGE',
                style: TextStyle(fontSize: 40.0),
              ),
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => age1(),
                  ),
                );
              },
            ),
          ),
        ])));
  }
}

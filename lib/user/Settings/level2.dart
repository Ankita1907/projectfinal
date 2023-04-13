import 'package:flutter/material.dart';
import 'age2.dart';

class level2 extends StatefulWidget {
  level2({Key? key}) : super(key: key);

  @override
  _level2State createState() => _level2State();
}

class _level2State extends State<level2> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    age2(),
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
          title: Text("AGE SELECTION"),
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
                    builder: (context) => age2(),
                  ),
                );
              },
            ),
          ),
        ])));
  }
}

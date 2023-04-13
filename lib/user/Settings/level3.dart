import 'package:flutter/material.dart';
import 'age3.dart';

class level3 extends StatefulWidget {
  level3({Key? key}) : super(key: key);

  @override
  _level3State createState() => _level3State();
}

class _level3State extends State<level3> {
  @override
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    age3(),
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
                    builder: (context) => age3(),
                  ),
                );
              },
            ),
          ),
        ])));
  }
}

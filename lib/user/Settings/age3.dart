import 'package:flutter/material.dart';

class age3 extends StatefulWidget {
  age3({Key? key}) : super(key: key);

  @override
  _age3State createState() => _age3State();
}

class _age3State extends State<age3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Text(
        'Enter your age',
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      )),
    );
  }
}

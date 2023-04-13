import 'package:flutter/material.dart';

class age2 extends StatefulWidget {
  age2({Key? key}) : super(key: key);

  @override
  _age2State createState() => _age2State();
}

class _age2State extends State<age2> {
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

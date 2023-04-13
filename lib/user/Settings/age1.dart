import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class age1 extends StatefulWidget {
  age1({Key? key}) : super(key: key);

  @override
  _age1State createState() => _age1State();
}

class _age1State extends State<age1> {
  @override
  //final Stream<QuerySnapshot> wordStream =
  //   FirebaseFirestore.instance.collection('words').snapshots();
  final _formKey = GlobalKey<FormState>();

  var age = "";

  final agecontroller = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.

    agecontroller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    var colors;
    //return StreamBuilder<QuerySnapshot>(
    //   stream: wordStream,
    //   builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
    //    if (snapshot.hasError) {
    //    print("object");
    //  }
    //  if (snapshot.connectionState == ConnectionState.waiting) {
    return Center(
      child: CircularProgressIndicator(),
    );
    // }
    final List Stdocs = [];
    //snapshot.data!.docs.map((DocumentSnapshot document) {
    //  Map a = document.data() as Map<String, dynamic>;
    //Stdocs.add(a);
    print(Stdocs);
    //  });

    return Scaffold(
      appBar: AppBar(
        title: Text("AGE SELECTION"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Age: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: agecontroller,
                  validator: (value) {
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
    //   });
  }
}

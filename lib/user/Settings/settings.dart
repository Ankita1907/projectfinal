import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cognitive_app/level_builder.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext con0text) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level Selection"),
      ),
      // body: Column(
      //   children: [
      //     Expanded(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: StreamBuilder(
            stream: _firestore.collection("levels").snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) => ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => LevelBuilder(
                                  title: snapshot.data!.docs[index].id,
                                  words: snapshot.data!.docs[index]["words"])),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Text(
                          snapshot.data!.docs[index].id,
                          style: const TextStyle(fontSize: 20),
                        ),
                      )),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
      // ),
      // ],
      // ),
    );
  }
}

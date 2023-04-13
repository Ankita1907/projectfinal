import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cognitive_app/level_select.dart';
import 'package:flutter/material.dart';

final _firestore = FirebaseFirestore.instance;

class AgeSelect extends StatelessWidget {
  const AgeSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Age Ranges'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: StreamBuilder(
              stream:
                  _firestore.collection("ages").orderBy("range").snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasData) {
                  final ageRanges = snapshot.data!.docs;

                  return ListView.builder(
                    itemCount: ageRanges.length,
                    itemBuilder: (context, i) => InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LevelSelect(
                            levels: ageRanges[i]["levels"],
                          ),
                        ));
                      },
                      child: Container(
                        color: Theme.of(context).primaryColor,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Center(
                          child: Text('Ages ${ageRanges[i]["range"]}',
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.white)),
                        ),
                      ),
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

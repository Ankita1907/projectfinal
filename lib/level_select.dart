import 'package:cognitive_app/level_builder.dart';
import 'package:flutter/material.dart';

class LevelSelect extends StatelessWidget {
  final List<dynamic> levels;
  const LevelSelect({Key? key, required this.levels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Levels"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 15.0),
          Expanded(
            child: ListView.builder(
              itemCount: levels.length,
              itemBuilder: (context, i) => InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LevelBuilder(
                        words: levels[i]["words"],
                        title: 'Level ${levels[i]["level"]}'),
                  ));
                },
                child: Container(
                  color: Theme.of(context).primaryColor,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Center(
                    child: Text('Level ${levels[i]["level"]}',
                        style:
                            const TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

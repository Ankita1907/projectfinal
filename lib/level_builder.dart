import 'dart:async';
import 'package:flutter/material.dart';

class LevelBuilder extends StatefulWidget {
  final List<dynamic> words;
  final String title;

  const LevelBuilder({Key? key, required this.words, required this.title})
      : super(key: key);

  @override
  State<LevelBuilder> createState() => _LevelBuilderState();
}

class _LevelBuilderState extends State<LevelBuilder> {
  Map<String, dynamic>? _wordOnScreen;
  String _info = "";
  bool _isPlaying = false;
  bool _isTyping = false;
  int _score = 0;
  String _btnText = "";
  Completer<void>? _nextWordCompleter;

  final TextEditingController _wordInputController = TextEditingController();

  void _cycleThroughWords() async {
    setState(() {
      _btnText = "Next";
      _score = 0;
      _info = "Remember the words that appear";
    });

    await Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        _info = "";
      });
    });

    // Words appearing on screen with a delay
    for (var word in widget.words) {
      await Future.delayed(const Duration(milliseconds: 3000), () {
        setState(() {
          _wordOnScreen = word;
        });
      });
    }

    await Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        _wordOnScreen = null;
      });
    });

    setState(() {
      _isTyping = true;
      _info = "Enter the words in the order of their appearance";
    });

    // Accepting user input and computing score
    for (int ctr = 0; ctr < widget.words.length; ctr++) {
      if (ctr == widget.words.length - 1) {
        setState(() {
          _btnText = "Done";
        });
      }
      _nextWordCompleter = Completer<void>();
      await _nextWordCompleter!.future;
      if (widget.words[ctr]["word"] == _wordInputController.text) {
        setState(() {
          _score += 10;
        });
      }
      _wordInputController.clear();
    }

    setState(() {
      _isTyping = false;
      _isPlaying = false;
    });
  }

  @override
  void initState() {
    // cycleThroughWords();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 15,
            left: 15,
            child: Text(
              'Score: $_score',
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          !_isPlaying
              ? Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _isPlaying = true;
                });
                _cycleThroughWords();
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15)),
              ),
              child: const Text(
                "Start",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          )
              : const SizedBox(),
          _isPlaying && !_isTyping && _wordOnScreen != null
              ? Center(
            // child: Text(
            //   _wordOnScreen,
            //   style: const TextStyle(
            //       fontWeight: FontWeight.bold, fontSize: 35),
            // ),
            child: Image.network(_wordOnScreen!["img"], height: 200,)
          )
              : const SizedBox(),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _isPlaying
                    ? Center(
                  child: Text(
                    _info,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 18),
                  ),
                )
                    : const SizedBox(),
                _isTyping
                    ? Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: TextField(
                      controller: _wordInputController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                )
                    : const SizedBox(),
                _isTyping
                    ? ElevatedButton(
                  onPressed: () {
                    _nextWordCompleter!.complete();
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10)),
                  ),
                  child: Text(
                    _btnText,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                )
                    : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

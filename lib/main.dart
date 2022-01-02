import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart'
    '';
void main() => runApp(WTApp());

class WTApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    return MaterialApp(
      title: 'WT App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contacts'),
        ),
        body: Center(
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}

class RandWords extends StatefulWidget {
  @override
  _RandWordsState createState() => _RandWordsState();
}

class _RandWordsState extends State<RandWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

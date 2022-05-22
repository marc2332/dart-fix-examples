import 'package:flutter/material.dart';


class WordList extends StatelessWidget {
  const WordList({super.key, required this.words});

  final List<String> words;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: words.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text(words[index]));
      },
    );
  }
}

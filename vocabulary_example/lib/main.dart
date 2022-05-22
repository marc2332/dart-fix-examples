import 'package:flutter/material.dart';
import 'package:vocabulary/vocabulary.dart';

import 'constants.dart';
import 'widgets/word_list.dart';

void main() => runApp(const VocabularyApp());

class VocabularyApp extends StatelessWidget {
  const VocabularyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: const Color(0xffe5b513),
      ),
      home: const VocabularyExample(),
    );
  }
}

class VocabularyExample extends StatelessWidget {
  const VocabularyExample({super.key});

  @override
  Widget build(BuildContext context) {
    Vocabulary vocabulary = Vocabulary();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vocabulary Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        List<String> words = vocabulary.generateFiveWords();
                        return WordsPage(
                          title: examples[0],
                          child: WordList(words: words),
                        );
                      },
                    ),
                  );
                },
                child: Text(examples[0]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WordsPage extends StatelessWidget {
  const WordsPage({super.key, required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: child,
    );
  }
}

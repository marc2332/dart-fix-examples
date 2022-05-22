library vocabulary;

import 'package:english_words/english_words.dart';

/// Vocabulary package
class Vocabulary {
  // Generate five random words
  List<String> generateFiveWords() {
    return generateWordPairs().take(5).map((WordPair wordPair) => wordPair.toString()).toList();
  }
  // Generate five random words
  @Deprecated('Use generateFiveWords instead.')
  List<String> generate5Words() {
    return generateWordPairs().take(5).map((WordPair wordPair) => wordPair.toString()).toList();
  }
}

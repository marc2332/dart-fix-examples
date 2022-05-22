library vocabulary;

import 'package:english_words/english_words.dart';

/// Vocabulary package
class Vocabulary {
  /// Generate five random words
  List<String> generateFiveWords() {
    return generateWordPairs().take(5).map((WordPair wordPair) => wordPair.toString()).toList();
  }
  /// Generate five random words
  @Deprecated('Use generateFiveWords instead.')
  List<String> generate5Words() {
    return generateWordPairs().take(5).map((WordPair wordPair) => wordPair.toString()).toList();
  }
}

class WordOfTheDay {
  WordOfTheDay({
    this.lowerCase = false,
    @Deprecated('Use lowerCase instead.')
    bool? getLowerCase,
  }) : _getLowerCase = getLowerCase;

  // Get a lowercase word.
  final bool lowerCase;

  // Get a lowercase word.
  bool get getLowerCase => _getLowerCase!;
  final bool? _getLowerCase;


  String randomWord() {
    // `getLowerCase` is deprecated but not removed.
    if ((_getLowerCase != null && _getLowerCase!) || lowerCase)  {
      return WordPair.random().toLowerCase().toString();
    }
    return WordPair.random().toString();
  }
}
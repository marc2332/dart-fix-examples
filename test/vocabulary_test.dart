import 'package:flutter_test/flutter_test.dart';
import 'package:string_validator/string_validator.dart';
import 'package:vocabulary/vocabulary.dart';

void main() {
  test('Generate a lowerCase word of the day', () {
    WordOfTheDay wordOfTheDay = WordOfTheDay(lowerCase: true);
    String word = wordOfTheDay.randomWord();
    expect(isLowercase(word), true);
  });

  test('Generate five words', () {
    Vocabulary vocabulary = Vocabulary();
    List<String> words = vocabulary.generateFiveWords();
    expect(words.length, 5);
  });


  test('Generate a lowerCase word of the day (deprecated)', () {
    WordOfTheDay wordOfTheDay = WordOfTheDay(getLowerCase: true);
    String word = wordOfTheDay.randomWord();
    expect(isLowercase(word), true);
  });

  // Deprecated
  test('Generate 5 words (deprecated)', () {
    Vocabulary vocabulary = Vocabulary();
    List<String> words = vocabulary.generate5Words();
    expect(words.length, 5);
  });
}

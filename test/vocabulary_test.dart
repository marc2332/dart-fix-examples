import 'package:flutter_test/flutter_test.dart';
import 'package:vocabulary/vocabulary.dart';

void main() {
  test('Generate five words', () {
    Vocabulary vocabulary = Vocabulary();
    List<String> words = vocabulary.generateFiveWords();
    expect(words.length, 5);
  });

  test('Generate 5 words', () {
    Vocabulary vocabulary = Vocabulary();
    List<String> words = vocabulary.generate5Words();
    expect(words.length, 5);
  });
}

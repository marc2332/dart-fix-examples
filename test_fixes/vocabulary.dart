import 'package:vocabulary/vocabulary.dart';

void main () {
  WordOfTheDay wordOfTheDay = WordOfTheDay();
  wordOfTheDay = WordOfTheDay(getLowerCase: true);

  Vocabulary vocabulary = Vocabulary();
  vocabulary.generate5Words();
}

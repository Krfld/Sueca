import 'package:sueca/models/playing_card.dart.dart';

abstract class Deck {
  final List<PlayingCard> cards = [];

  void reset();

  Deck() {
    reset();
  }

  void shuffle() => cards.shuffle();

  PlayingCard takeCard() => cards.removeLast();

  @override
  String toString() => cards.toString();
}

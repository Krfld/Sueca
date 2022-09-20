import 'package:sueca/models/playing_card.dart.dart';

abstract class Deck {
  final List<PlayingCard> cards = [];

  void reset();

  Deck() {
    reset();
  }
}

import 'package:sueca/models/deck.dart';
import 'package:sueca/models/playing_card.dart.dart';
import 'package:sueca/utilities/print.dart';

class SuecaDeck extends Deck {
  static const List<int> RANKS = [1, 2, 3, 4, 5, 6, 7, 11, 12, 13];

  @override
  void reset() {
    cards.clear();
    cards.addAll([
      for (int rank in SuecaDeck.RANKS)
        for (int suit in PlayingCard.SUITS) PlayingCard(rank, suit)
    ]);
    shuffle();
    print(cards, prefix: 'Reset');
  }

  @override
  int cardValue(PlayingCard card) {
    switch (card.rankId) {
      case 1:
        return 11;
      case 7:
        return 10;
      case 11:
      case 12:
      case 13:
        return card.rankId - 9;
      default:
        return 0;
    }
  }
}

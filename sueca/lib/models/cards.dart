import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PlayingCard {
  final int _rank;
  final int _suit;

  PlayingCard(this._rank, this._suit);

  /// Rank

  String get rank {
    switch (_rank) {
      case 0:
        return 'JK';
      case 1:
        return 'A';
      case 11:
        return 'J';
      case 12:
        return 'Q';
      case 13:
        return 'K';
      default:
        return _rank.toString();
    }
  }

  /// Suit

  final Map<int, Icon> _suits = {
    0: const Icon(MdiIcons.cardsSpade),
    1: const Icon(MdiIcons.cardsHeart),
    2: const Icon(MdiIcons.cardsDiamond),
    3: const Icon(MdiIcons.cardsClub),
  };

  final Map<int, String> _suitSymbols = {
    0: '♠',
    1: '♥',
    2: '♦',
    3: '♣',
  };

  Icon get suit => _suits[_suit]!;
  String get suitSymbol => _suitSymbols[_suit]!;

  /// Color

  final Map<int, Color> _colors = {
    0: Colors.black,
    1: Colors.red,
    2: Colors.red,
    3: Colors.black,
  };

  Color get color => _colors[_suit]!;

  /// Overrides

  @override
  String toString() => '$rank$suitSymbol';

  @override
  bool operator ==(dynamic other) => rank == other.rank && suit == other.suit;

  @override
  int get hashCode => toString().hashCode;
}

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

/// Rank
///
/// 0 - JK
/// 1 - A
/// 2 - 2
/// 3 - 3
/// 4 - 4
/// 5 - 5
/// 6 - 6
/// 7 - 7
/// 8 - 8
/// 9 - 9
/// 10 - 10
/// 11 - J
/// 12 - Q
/// 13 - K

/// Suit
///
/// 0 - Spades
/// 1 - Hearts
/// 2 - Diamonds
/// 3 - Clubs

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

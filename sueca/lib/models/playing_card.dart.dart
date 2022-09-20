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
/// 0 - Spades ♠
/// 1 - Hearts ♥
/// 2 - Diamonds ♦
/// 3 - Clubs ♣

class PlayingCard {
  static const List<int> RANKS = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  static const List<int> SUITS = [0, 1, 2, 3];

  final int rankId;
  final int suitId;

  PlayingCard(this.rankId, this.suitId);

  /// Rank

  String get rank {
    switch (rankId) {
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
        return rankId.toString();
    }
  }

  /// Suit

  final Map<int, Icon> _suitIcons = {
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

  final Map<int, Color> _suitColors = {
    0: Colors.black,
    1: Colors.red,
    2: Colors.red,
    3: Colors.black,
  };

  Icon get suitIcon => _suitIcons[suitId]!;
  String get suitSymbol => _suitSymbols[suitId]!;
  Color get suitColor => _suitColors[suitId]!;

  /// Overrides

  @override
  String toString() => '$rank$suitSymbol';

  @override
  bool operator ==(dynamic other) =>
      rankId == other.rankId && suitId == other.suitId;

  @override
  int get hashCode => toString().hashCode;
}

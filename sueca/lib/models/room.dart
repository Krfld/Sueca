import 'package:cloud_firestore/cloud_firestore.dart';

class Room {
  final String id;
  final String name;
  final Timestamp timestamp;
  final String host;
  final bool ready;
  final bool started;
  final Map<String, int?> players;

  Room({
    required this.id,
    required this.name,
    required this.timestamp,
    required this.host,
    required this.ready,
    required this.started,
    required this.players,
  });
}

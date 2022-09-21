import 'package:cloud_firestore/cloud_firestore.dart';

class Room {
  final String id;
  final String name;
  final Timestamp timestamp;
  final String host;
  final bool ready;
  final bool started;
  final Map<String, int?> players;

  Room(
    this.id,
    this.name,
    this.timestamp,
    this.host,
    this.ready,
    this.started,
    this.players,
  );
}

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sueca/models/deck.dart';
import 'package:sueca/models/sueca_deck.dart';
import 'package:sueca/utilities/print.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suekelson',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: const Text('Sueca'),
            onPressed: () {
              final Deck deck = SuecaDeck();
              print(deck.takeCard());
              print(deck);
            },
          ),
        ),
      ),
    );
  }
}

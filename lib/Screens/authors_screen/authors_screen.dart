import 'package:flutter/material.dart';

import '../../data/book_data.dart';

class AuthorsScreen extends StatefulWidget {
  const AuthorsScreen({super.key});

  @override
  State<AuthorsScreen> createState() => _AuthorsScreenState();
}

class _AuthorsScreenState extends State<AuthorsScreen> {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Beginning app development with Flutter',
      authorName: 'Rap Payne',
      books: 3,
    ),
    Transaction(
      id: 't2',
      title: 'Flutter Complete Reference',
      authorName: 'Alberto Miola',
      books: 2,
    ),
    Transaction(
      id: 't3',
      title: 'Flutter in Action',
      authorName: 'Kasper Lund',
      books: 1,
    ),
    Transaction(
      id: 't10',
      title: 'Flutter y Firebase',
      authorName: 'Rafael Barboza',
      books: 1,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authors'),
      ),
      body: ListView(
        children: transactions.map((tx) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      tx.authorName!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${tx.books} books',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

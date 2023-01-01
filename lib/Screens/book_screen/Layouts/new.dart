import 'package:flutter/material.dart';

import '../../../data/book_data.dart';

class NewBooks extends StatefulWidget {
  const NewBooks({super.key});

  @override
  State<NewBooks> createState() => _NewBooksState();
}

class _NewBooksState extends State<NewBooks> {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Beginning app development with Flutter',
      authorName: 'Rap Payne',
    ),
    Transaction(
      id: 't2',
      title: 'Flutter Complete Reference',
      authorName: 'Alberto Miola',
    ),
    Transaction(
      id: 't3',
      title: 'Flutter in Action',
      authorName: 'Kasper Lund',
    ),
    Transaction(
      id: 't4',
      title: 'Flutter Cookbook',
      authorName: 'Rafael Barboza',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: transactions.map((tx) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    tx.title!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    tx.authorName!,
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
    );
  }
}

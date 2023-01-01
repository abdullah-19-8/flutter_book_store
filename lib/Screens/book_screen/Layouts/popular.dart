import 'package:flutter/material.dart';

import '../../../data/book_data.dart';

class PopularBooks extends StatefulWidget {
  const PopularBooks({
    Key? key,
  }) : super(key: key);

  @override
  State<PopularBooks> createState() => _PopularBooksState();
}

class _PopularBooksState extends State<PopularBooks> {
  final List<Transaction> transactions = [
    Transaction(
      id: 't6',
      title: 'Flutter for Dummies',
      authorName: 'Rafael Barboza',
    ),
    Transaction(
      id: 't7',
      title: 'Flutter for Dummies',
      authorName: 'Rafael Barboza',
    ),
    Transaction(
      id: 't8',
      title: 'Flutter for Dummies',
      authorName: 'Rafael Barboza',
    ),
    Transaction(
      id: 't9',
      title: 'Flutter kickstart',
      authorName: 'Rafael Barboza',
    ),
    Transaction(
      id: 't10',
      title: 'Flutter y Firebase',
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

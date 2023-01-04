import 'package:flutter/material.dart';
import 'package:practical_assignment/helper/dummy_data.dart';

import '../../../model/book_data.dart';

class NewBooks extends StatefulWidget {
  const NewBooks({super.key});

  @override
  State<NewBooks> createState() => _NewBooksState();
}

class _NewBooksState extends State<NewBooks> {
  List<Transaction> categorize() =>
      transactions.where((element) => element.category == 'New').toList();

  @override
  Widget build(BuildContext context) {
    final List<Transaction> transactions = categorize();
    return ListView(
      children: transactions.map((tx) =>
        Padding(
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
        ),
      ).toList(),
    );
  }
}

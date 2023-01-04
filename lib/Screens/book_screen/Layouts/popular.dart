import 'package:flutter/material.dart';
import 'package:practical_assignment/helper/dummy_data.dart';

import '../../../model/book_data.dart';

class PopularBooks extends StatefulWidget {
  const PopularBooks({
    Key? key,
  }) : super(key: key);

  @override
  State<PopularBooks> createState() => _PopularBooksState();
}

class _PopularBooksState extends State<PopularBooks> {
  List<Transaction> categorize() =>
      transactions.where((element) => element.category == 'Popular').toList();

  @override
  Widget build(BuildContext context) {
    final List<Transaction> transactions = categorize();
    return ListView(
      children: transactions
          .map(
            (tx) => Padding(
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
          )
          .toList(),
    );
  }
}

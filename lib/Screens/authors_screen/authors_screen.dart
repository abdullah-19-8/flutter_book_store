import 'package:flutter/material.dart';

import '../../helper/dummy_data.dart';

class AuthorsScreen extends StatefulWidget {
  const AuthorsScreen({super.key});

  @override
  State<AuthorsScreen> createState() => _AuthorsScreenState();
}

class _AuthorsScreenState extends State<AuthorsScreen> {
  @override
  Widget build(BuildContext context) {
    int count = 0;
    List names = []; // List();
    for (var u in transactions) {
      if (names.contains(u.authorName)) {
        names.removeWhere((element) => element == u.authorName);
        count++;
      } else {
        names.add(u.authorName);
      }
      
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authors'),
      ),
      body: ListView(
        children: names.map((tx) =>
           Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      tx,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$count books',
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
      ),
    );
  }
}

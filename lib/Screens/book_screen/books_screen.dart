import 'package:flutter/material.dart';
import 'package:practical_assignment/Screens/book_screen/Layouts/all.dart';
import 'package:practical_assignment/Screens/book_screen/Layouts/new.dart';

import 'Layouts/popular.dart';

class BooksScreen extends StatefulWidget {
  const BooksScreen({super.key});

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Books'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.people_alt_rounded),
                text: 'Popular',
              ),
              Tab(
                icon: Icon(Icons.new_releases),
                text: 'New',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'All',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PopularBooks(),
            NewBooks(),
            AllBooks(),
          ],
        ),
      ),
    );
  }
}

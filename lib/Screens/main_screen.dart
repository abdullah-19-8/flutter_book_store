import 'package:flutter/material.dart';

import 'authors_screen/authors_screen.dart';
import 'book_screen/books_screen.dart';
import 'settings_screen/settings_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _screens = [
    const BooksScreen(),
    const AuthorsScreen(),
    const SettingsScreen(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: SizedBox(
          height: 56,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBottomBar(
                    text: "Books",
                    icon: Icons.book,
                    selected: selectedIndex == 0 ? true : false,
                    onPressed: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    }),
                IconBottomBar(
                    text: "Authors",
                    icon: Icons.person,
                    selected: selectedIndex == 1 ? true : false,
                    onPressed: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    }),
                IconBottomBar(
                    text: "Settings",
                    icon: Icons.settings,
                    selected: selectedIndex == 2 ? true : false,
                    onPressed: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? Colors.blue : Colors.black54,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 12,
              height: .1,
              color: selected ? Colors.blue : Colors.grey.withOpacity(.75)),
        )
      ],
    );
  }
}

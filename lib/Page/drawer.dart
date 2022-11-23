import 'package:flutter/material.dart';
import 'package:flutterassignment/page/budget/add_info.dart';
import 'package:flutterassignment/page/budget/budget_data.dart';
import 'package:flutterassignment/main.dart';
import 'package:flutterassignment/Page/mywatchlist/mywatchlist.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Adding clickable menu
          ListTile(
            title: const Text('Counter'),
            onTap: () {
              // Routing the menu to the main page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Add Budget Data'),
            onTap: () {
              // Routing the menu to the main page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyFormPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Show Budget'),
            onTap: () {
              // Routing the menu to the main page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyDataPage(
                    title: "Budget Data")),
              );
            },
          ),
          ListTile(
            title: const Text('Watchlist'),
            onTap: () {
              // Routing the menu to the main page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyWatchlistPage()
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
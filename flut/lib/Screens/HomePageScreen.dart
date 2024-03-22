import 'package:flutter/material.dart';

import 'HomeScreens/Mutual.dart';
import 'HomeScreens/Profile.dart';
import 'HomeScreens/Real.dart';
import 'HomeScreens/Stock.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int currentPageIndex = 0;
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Colors.deepPurple.shade100,
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.show_chart),
              icon: Icon(Icons.show_chart),
              label: 'Stock market',
            ),
            NavigationDestination(
              icon: Icon(Icons.map_outlined),
              label: 'mutual fund',
            ),
            NavigationDestination(
              icon: Icon(Icons.real_estate_agent_rounded),
              label: 'real estate',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_2_rounded),
              label: 'profile',
            ),
          ],
        ),
        body: <Widget>[
          /// Stocks page
          Stocks(),
          /// Mutual fund page
          Mutual(),
          /// Messages page
          Real(),
          ///profile page
          Profile(),
        ][currentPageIndex],
      ),
    );;
  }
}

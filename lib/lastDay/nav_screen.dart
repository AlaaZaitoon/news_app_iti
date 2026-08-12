import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:new_iti/lastDay/home_screen.dart';
import 'package:new_iti/lastDay/search_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int currIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        height: 60,
        color: const Color(0xff001F3F),
        buttonBackgroundColor: Colors.amber,
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.search, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            currIndex = index;
          });
        },
        index: currIndex,
      ),
    );
  }
}

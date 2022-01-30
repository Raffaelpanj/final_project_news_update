import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'ProfileScreen.dart';
import 'TipsScreen.dart';

class BtmNavBar extends StatefulWidget {
  const BtmNavBar({Key? key}) : super(key: key);

  @override
  _BtmNavBarState createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 10, fontWeight: FontWeight.w400);
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    TipsScrn(),
    ProfileScrn(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(2.0),
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: 'Tips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_rounded),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff13294b),
        onTap: _onItemTapped,
      ),
    );
  }
}

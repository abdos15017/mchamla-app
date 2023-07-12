import 'package:first_app/ui/pages/about-us.dart';
import 'package:first_app/ui/pages/home.dart';
import 'package:first_app/ui/pages/profile.dart';
import 'package:first_app/ui/pages/search.dart';
import 'package:first_app/utilities/constants.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    SearchPage(),
    ProfilePage(),
    AboutUsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          //showSelectedLabels: false,
          //showUnselectedLabels: false,

          type: BottomNavigationBarType.fixed,
          selectedItemColor: kdeepOrange,
          unselectedItemColor: Colors.black45,
          selectedLabelStyle: kBodyText,
          unselectedLabelStyle: itemTextStyle,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded),
                activeIcon: Icon(Icons.search),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_location_alt_outlined),
                activeIcon: Icon(Icons.add_location_alt),
                label: 'Add Trip'),
            BottomNavigationBarItem(
                icon: Icon(Icons.star_border_outlined),
                activeIcon: Icon(Icons.star_outlined),
                label: 'Favorite'),

          ]),
    );
  }
}
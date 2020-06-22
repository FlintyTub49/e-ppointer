import 'package:eppointer/pages/profile.dart';
import 'package:flutter/material.dart';

import 'pages/discover.dart';
import 'pages/appointments_home.dart';
import 'pages/saved.dart';

import 'UI/nav_bar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentTab = 0;
  final List<Widget> _children = [
    AppointmentsHome(),
    DiscoverPage(),
    SavedPage(),
  ];

  tapped(int tappedIndex) {
    setState(() {
      _currentTab = tappedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'e-ppointer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Color(0xFFF4877D),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Open Sans'),
      home: Scaffold(
        body: _children[_currentTab],
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
            primaryColor: const Color(0xFFBF3528),
            disabledColor: Theme.of(context).accentColor,
          ),
          child: BottomNavigationBar(
            currentIndex: _currentTab,
            onTap: tapped,
            /*
            onTap: (int value) {
              setState(() {
                _currentTab = value;
              });
            },
            */
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_books,
                  size: 30,
                ),
                /*
                activeIcon: Icon(
                  Icons.library_books,
                  size: 30,
                  color: const Color(0xFFBF3528),
                ),
                */
                title: SizedBox.shrink(),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                title: SizedBox.shrink(),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  size: 30,
                ),
                title: SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

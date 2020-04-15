import 'package:flutter/material.dart';
import '../screens/home_screens.dart';
import '../screens/world_report.dart';
import '../screens/contact_screen.dart';
import '../screens/tablayout/dos_donts.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    WorldReport("ওয়ার্ল্ড রিপোর্ট"),
    Contact(),
    DosDonts()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.pinkAccent),
            title: Text('হোম',style: TextStyle(color: Colors.black)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore,color: Colors.pinkAccent),
            title: Text('ওয়ার্ল্ড রিপোর্ট',style: TextStyle(color: Colors.black)),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone,color: Colors.pinkAccent),
              title: Text('পরামর্শ নিন',style: TextStyle(color: Colors.black))
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list,color: Colors.pinkAccent),
              title: Text('করণীয়',style: TextStyle(color: Colors.black),)
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
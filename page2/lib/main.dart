import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:page2/Pages/authentication_page.dart';
import 'package:page2/Pages/home_page.dart';
import 'package:page2/Pages/leaderborad_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => AuthenticationPage(),
      ),
    ),
  );
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key});

  @override
  State<FirstPage> createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  int _currentIndex = 1;

  final List<Widget> pages = [
    
    LeaderboardPage(),
    HomePage(),
    LeaderboardPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: _currentIndex,
          height: 62,
          color: Color(0xFFe8d2ae),
          animationDuration: Duration(milliseconds: 300),
          backgroundColor: Color(0xFF0f898c),
          items: [
            Icon(Icons.leaderboard, color: Color(0xFF0f898c)),
            Icon(Icons.home, color: Color(0xFF0f898c)),
            Icon(Icons.leaderboard, color: Color(0xFF0f898c)),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: pages[_currentIndex],
      );
    
  }
}

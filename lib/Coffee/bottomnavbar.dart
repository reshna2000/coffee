import 'package:coffee/Coffee/Login1.dart';
import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int _currentIndex=0;
  final List<Widget>_pages=[
    Login1(),
    Login1(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF885A3A),
        unselectedItemColor: Colors.black,
        onTap:  (value) {
          setState(() {
            _currentIndex=value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded),
              label: ''),

      ],

),
    );
  }
}

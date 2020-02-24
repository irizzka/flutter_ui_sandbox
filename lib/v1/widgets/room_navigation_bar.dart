import 'package:flutter/material.dart';

class RoomNavigationBar extends StatelessWidget {

  List<BottomNavigationBarItem> _bnbarItems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.black54,
      icon: Icon(Icons.location_on),
      title: Text('', style:  TextStyle(fontSize: 0),)
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.person),
      title: Text('', style:  TextStyle(fontSize: 0),)
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: _bnbarItems,
    );
  }
}

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      color: Colors.blueAccent,
      index: 2,
      items: [
        Icon(Icons.person_outline, size: 30, color: Colors.white,),         //index 0
        Icon(Icons.favorite_border, size: 30, color: Colors.white,),     //index 1
        Icon(Icons.home, size: 30, color: Colors.white,), //index 2
        Icon(Icons.location_on_outlined, size: 30, color: Colors.white,),  //index 3
        Icon(Icons.list, size: 30, color: Colors.white,), //index 4
      ],
    );
    
  }
}
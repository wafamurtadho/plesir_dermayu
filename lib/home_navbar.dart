import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:plesir_dermayu/pages/favorite_page.dart';
import 'package:plesir_dermayu/pages/list_page.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    ScrollController _hideButtonController;
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

      onTap: (index) { // Add onTap callback for the entire CurvedNavigationBar
        if (index == 1) {
          // When the fifth item is tapped, navigate to the PostPage
          Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritePage()));
        };
        if (index == 4) {
          // When the fifth item is tapped, navigate to the PostPage
          Navigator.push(context, MaterialPageRoute(builder: (context) => ListPage()));
        }
      },
    );
    
  }
}
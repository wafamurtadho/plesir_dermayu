import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ini adalah favorite'),),
      body: Center(child: Text('ini isi body favorite $_counter times.'),),
      // bottomNavigationBar: BottomAppBar(
      //   child: Container(
      //     height: 50.0,
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _counter++;
            }),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:plesir_dermayu/drawer_page.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DrawerPage(),
                  ));
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  )
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.chat,
                size: 28,
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.deepOrange,
              ),
              Text(
                'Indramayu, Jawa Barat',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.search,
                size: 25,
              ),
            ),
          )
        ],
      ),
    );

    // ignore: dead_code
    // return Scaffold(
    //   drawer: Drawer(
    //     child: Column(
    //       children: [
    //         Container(
    //           alignment: Alignment.center,
    //           height: 200,
    //           width: double.infinity,
    //           color: Colors.amber,
    //           child: const Text('iniadalah drawe'),
    //         ),
    //         ListTile(
    //           title: const Text('cdicjdc', style: TextStyle(
    //             fontStyle: FontStyle.italic, fontSize: 20,
    //           ), textAlign: TextAlign.end),
    //           onTap: () {
    //             //bisa di isi
    //           },
    //         ),
    //         ListTile(
    //           title: const Text('cdicjdc', style: TextStyle(
    //             fontStyle: FontStyle.italic, fontSize: 20,
    //           ), textAlign: TextAlign.end),
    //           onTap: () {
    //             //bisa di isi
    //           },
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}

import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          BackButton(
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
        title: Text('Sedang dikembangkan !!'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              width: double.infinity,
              color: Colors.amber,
              child: const Text('iniadalah drawe'),
            ),
            ListTile(
              title: const Text('cdicjdc',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.end),
              onTap: () {
                //bisa di isi
              },
            ),
            ListTile(
              title: const Text('cdicjdc',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.end),
              onTap: () {
                //bisa di isi
              },
            )
          ],
        ),
      ),
      body: Column(
      ),
    );
  }
}

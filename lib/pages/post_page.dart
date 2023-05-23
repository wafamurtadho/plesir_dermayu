import 'package:flutter/material.dart';
import 'package:plesir_dermayu/post_appbar.dart';
import 'package:plesir_dermayu/post_navbar.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/fix_places/plesir_2.jpg'),
          fit: BoxFit.cover,
          opacity: 0.85,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),
        ),
        bottomNavigationBar: PostNavBar(),
      ),
    );
  }
}

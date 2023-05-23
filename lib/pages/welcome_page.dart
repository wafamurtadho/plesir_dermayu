import 'package:flutter/material.dart';
import 'package:plesir_dermayu/pages/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/icons/tugu_mangga.jpg'),
          fit: BoxFit.cover,
          // opacity: 0.7,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Plesir Dermayu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),

                SizedBox(height: 2),
                Text(
                  'Aplikasi`e Wong Dermayu',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 35,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.5,
                  ),
                ),

                SizedBox(height: 12),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 16,
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.justify,
                ),

                SizedBox(height: 30),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),
                    ));
                  },
                  child: Ink(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black54,
                      size: 20,
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Text(
                  "ⓒ Copyright by Wafa Murtadho Kholid",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 9,
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ], 
            ),
          ),
        ),
      ),
    );
  }
}

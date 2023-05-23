import 'package:flutter/material.dart';
import 'package:plesir_dermayu/home_appbar.dart';
import 'package:plesir_dermayu/home_navbar.dart';
import 'package:plesir_dermayu/pages/post_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final category = [
    'Best Place',
    'Most Visited',
    'Favorites',
    'New Added',
    'Hotels',
    'Restaurants',
    'Rekomendasi',
    'Favorites',
    'Budaya',
    'Batik Khas',
    'Kuliner'
    ,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PostPage(),
                              ));
                              },
                              child: Container(
                                width: 160,
                                padding: EdgeInsets.all(20),
                                margin: EdgeInsets.only(left: 15),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    // image: AssetImage('images/places/pantai_lemah_abang.jpg'),
                                    image: AssetImage(
                                        'images/fix_places/plesir_${index + 1}.jpg'),
                                    fit: BoxFit.cover,
                                    opacity: 0.7,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: Icon(
                                        Icons.bookmark_border_outlined,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        'nama wisata',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),

                // tempat list baris 1 -> category 
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        for (int i = 0; i < 6; i++)
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            child: Text(
                              category[i],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                ),

                // tempat list baris 2 -> category2 
                // SizedBox(height: 5),
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Padding(
                //     padding: EdgeInsets.all(8),
                //     child: Row(
                //       children: [
                //         for (int a = 6; a < 12; a++)
                //           Container(
                //             margin: EdgeInsets.symmetric(horizontal: 10),
                //             padding: EdgeInsets.all(10),
                //             decoration: BoxDecoration(
                //               color: Colors.white,
                //               borderRadius: BorderRadius.circular(10),
                //               boxShadow: [
                //                 BoxShadow(
                //                   color: Colors.black26,
                //                   blurRadius: 4,
                //                 )
                //               ],
                //             ),
                //             child: Text(
                //               category[a],
                //               style: TextStyle(
                //                 fontSize: 15,
                //                 fontWeight: FontWeight.w500,
                //               ),
                //             ),
                //           )
                //       ],
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PostPage(),
                              ));
                            },
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'images/fix_places/plesir_${index + 1}.jpg'),
                                  fit: BoxFit.cover,
                                  opacity: 0.8,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'nama wisata',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(Icons.more_vert, size: 30),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: HomeNavBar(),
    );
  }
}

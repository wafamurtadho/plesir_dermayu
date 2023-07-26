import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class ListPage extends StatefulWidget {
  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  int daftarWisata = 0;
  var dataJson;

  @override
  void initState() {
    super.initState();
    _getDataFromStrapi();
  }

  void _getDataFromStrapi() async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    var response = await http.get(
      Uri.parse('http://localhost:1337/api/pelesir-dermayus/'),
      headers: headers,
    );

    dataJson = jsonDecode(response.body);
    
    
    setState(() {
      daftarWisata = dataJson["meta"]["pagination"]["total"];
      print(daftarWisata);
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('tempat apix'),),
      body: Center(
        child: ListView.builder(
          itemCount: daftarWisata,
          itemBuilder: (data, index) {
            print(index);
            return ListTile(
              title: Text(dataJson["data"][index]["attributes"]["alamat_wisata"]),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _getDataFromStrapi();
          },
        tooltip: 'Increment',
        icon: Icon(Icons.refresh),
        label: Text('Show Indicator'),
        ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class ListPage extends StatefulWidget {
//   @override
//   State<ListPage> createState() => _ListPageState();
// }

// class _ListPageState extends State<ListPage> {
//   List<dynamic> wisataList = [];
//   bool isLoading = false;
//   bool isError = false;
  
//   var dataJson;

//   @override
//   void initState() {
//     super.initState();
//     _getDataFromStrapi();
//   }

//   Future<void> _getDataFromStrapi() async {
//     setState(() {
//       isLoading = true;
//       isError = false;
//     });

//     try {
//       var response = await http.get(
//         Uri.parse('http://localhost:1337/api/pelesir-dermayus/'),
//         // headers: headers,
//       );

//       if (response.statusCode == 200) {
//         var dataJson = jsonDecode(response.body);
//         print(response.body);
//         setState(() {
//           wisataList = dataJson["meta"]["pagination"]["total"];
//           print(wisataList);
//           isLoading = false;
//         });
//       } else {
//         // Handle other status codes if needed
//         setState(() {
//           isError = true;
//           isLoading = false;
//         });
//       }
//     } catch (e) {
//       print("Error: $e");
//       setState(() {
//         isError = true;
//         isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Tempat API'),
//       ),
//       body: isLoading
//           ? Center(
//               child: CircularProgressIndicator(),
//             )
//           : isError
//               ? Center(
//                   child: Text('Error fetching data from API'),
//                 )
//               : ListView.builder(
//                   itemCount: wisataList.length,
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       title: Text(wisataList[index]["attributes"]["nama_wisata"]),
//                     );
//                   },
//                 ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: _getDataFromStrapi,
//         tooltip: 'Refresh',
//         icon: Icon(Icons.refresh),
//         label: Text('Refresh Data'),
//       ),
//     );
//   }
// }
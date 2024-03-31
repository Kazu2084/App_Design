// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Merch Store Dashboard',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         fontFamily: 'Raleway',
//       ),
//       home: DashboardPage(),
//     );
//   }
// }

// class DashboardPage extends StatefulWidget {
//   @override
//   _DashboardPageState createState() => _DashboardPageState();
// }

// class _DashboardPageState extends State<DashboardPage> {
//   List<dynamic> products = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchProducts();
//   }

//   Future<void> fetchProducts() async {
//     final response = await http
//         .get(Uri.parse('http://localhost/fyp/app/modules/cafe/viewmenu.php'));

//     if (response.statusCode == 200) {
//       setState(() {
//         products = jsonDecode(response.body);
//       });
//     } else {
//       throw Exception('Failed to load products');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text(
//             'Merch Store Dashboard',
//             style: TextStyle(
//               fontFamily: 'Raleway',
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 200,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/banner.jpg'), // Placeholder image
//                   fit: BoxFit.cover,
//                 ),
//                 borderRadius: BorderRadius.circular(15),
//               ),
//             ),
//             SizedBox(height: 20),
//             Padding(
//               padding: const EdgeInsets.only(left: 8.0),
//               child: Text(
//                 'Your Products:',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: (products.length / 2).ceil(), // Show only 2 cards
//                 itemBuilder: (context, index) {
//                   return Row(
//                     children: [
//                       Expanded(
//                         child: index * 2 < products.length
//                             ? ProductCard(
//                                 productName: products[index * 2]['productName'],
//                                 productDesc: products[index * 2]['productDesc'],
//                                 productPrice: products[index * 2]
//                                     ['productPrice'],
//                               )
//                             : SizedBox.shrink(),
//                       ),
//                       SizedBox(width: 20), // Add some spacing between cards
//                       Expanded(
//                         child: (index * 2 + 1) < products.length
//                             ? ProductCard(
//                                 productName: products[index * 2 + 1]
//                                     ['productName'],
//                                 productDesc: products[index * 2 + 1]
//                                     ['productDesc'],
//                                 productPrice: products[index * 2 + 1]
//                                     ['productPrice'],
//                               )
//                             : SizedBox.shrink(),
//                       ),
//                     ],
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProductCard extends StatelessWidget {
//   final String productName;
//   final String productDesc;
//   final String productPrice;

//   const ProductCard({
//     Key? key,
//     required this.productName,
//     required this.productDesc,
//     required this.productPrice,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 5,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15.0),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               width: 150,
//               height: 150,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15.0),
//                 image: DecorationImage(
//                   image:
//                       AssetImage('assets/default_image.jpg'), // Default image
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               productName,
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 5),
//             Text(
//               productDesc,
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.grey[600],
//               ),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 5),
//             Text(
//               '\$$productPrice',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blue,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

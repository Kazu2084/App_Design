// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'Modules',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontFamily: 'Raleway',
//             ),
//           ),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       children: [
//                         CustomSquare(
//                             icon: Icons.calendar_today, color: Colors.blue),
//                         Text(
//                           'Attendance',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontFamily: 'Raleway',
//                           ),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         CustomSquare(
//                             icon: Icons.assignment, color: Colors.green),
//                         Text(
//                           'Exam',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontFamily: 'Raleway',
//                           ),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         CustomSquare(icon: Icons.work, color: Colors.orange),
//                         Text(
//                           'Placement',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontFamily: 'Raleway',
//                           ),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         CustomSquare(icon: Icons.book, color: Colors.purple),
//                         Text(
//                           'Notes',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontFamily: 'Raleway',
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       children: [
//                         CustomSquare(
//                             icon: Icons.attach_money, color: Colors.deepOrange),
//                         Text(
//                           'Fees',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontFamily: 'Raleway',
//                           ),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         CustomSquare(
//                             icon: Icons.assessment, color: Colors.deepPurple),
//                         Text(
//                           'Result',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontFamily: 'Raleway',
//                           ),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         CustomSquare(icon: Icons.chat, color: Colors.teal),
//                         Text(
//                           'Counselling',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontFamily: 'Raleway',
//                           ),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         CustomSquare(icon: Icons.feedback, color: Colors.pink),
//                         Text(
//                           'Feedback',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontFamily: 'Raleway',
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CustomRectangularCard(
//                       imageUrl: 'assets/library.jpeg',
//                       title: 'Library',
//                       shadowColor: Colors.grey.withOpacity(0.5),
//                     ),
//                     CustomRectangularCard(
//                       imageUrl: 'assets/cafe.jpeg',
//                       title: 'Cafe',
//                       shadowColor: Colors.grey.withOpacity(0.5),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CustomRectangularCard(
//                       imageUrl: 'assets/merch.jpeg',
//                       title: 'Merchandise',
//                       shadowColor: Colors.grey.withOpacity(0.5),
//                     ),
//                     CustomRectangularCard(
//                       imageUrl: 'assets/library.jpeg',
//                       title: 'Library',
//                       shadowColor: Colors.grey.withOpacity(0.5),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CustomRectangularCard(
//                       imageUrl: 'assets/cafe.jpeg',
//                       title: 'Cafe',
//                       shadowColor: Colors.grey.withOpacity(0.5),
//                     ),
//                     CustomRectangularCard(
//                       imageUrl: 'assets/merch.jpeg',
//                       title: 'Merchandise',
//                       shadowColor: Colors.grey.withOpacity(0.5),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomSquare extends StatelessWidget {
//   final IconData icon;
//   final Color color;

//   const CustomSquare({
//     required this.icon,
//     required this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 70,
//       height: 70,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(color: Colors.blue, width: 1), // Thin blue border
//         boxShadow: [
//           BoxShadow(
//             color: color.withOpacity(0.3),
//             // spreadRadius: 2,
//             // blurRadius: 5,
//             // offset: Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Center(
//         child: Icon(icon, size: 30, color: Colors.white),
//       ),
//     );
//   }
// }

// class CustomRectangularCard extends StatelessWidget {
//   final String imageUrl;
//   final String title;
//   final Color? shadowColor;

//   const CustomRectangularCard({
//     required this.imageUrl,
//     required this.title,
//     this.shadowColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 150,
//       height: 100,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: shadowColor ?? Colors.black.withOpacity(0.3),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Stack(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Image.asset(
//               imageUrl,
//               width: double.infinity,
//               height: double.infinity,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: Colors.black.withOpacity(0.5),
//             ),
//           ),
//           Center(
//             child: Text(
//               title,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 15,
//                 fontFamily: 'Raleway',
//                 fontWeight: FontWeight.normal,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

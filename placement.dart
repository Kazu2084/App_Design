// import 'package:flutter/material.dart';

// void main() {
//   runApp(PlacementApp());
// }

// class PlacementApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Placement App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//         fontFamily: 'Raleway',
//       ),
//       home: DashboardPage(),
//     );
//   }
// }

// class DashboardPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(250.0),
//         child: Stack(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(40.0),
//                 bottomRight: Radius.circular(40.0),
//               ),
//               child: Container(
//                 height: 400.0,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/placement.jpeg'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ),
//             AppBar(
//               title: Text(
//                 'Placement',
//                 style:
//                     TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//               centerTitle: true,
//               backgroundColor: Colors.transparent,
//               elevation: 0,
//             ),
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 0.0),
//         child: ListView(
//           padding: EdgeInsets.all(20.0),
//           children: [
//             CompanyListing(
//               companyName: 'Company A',
//               location: 'New York',
//               jobTitle: 'Software Engineer',
//             ),
//             CompanyListing(
//               companyName: 'Company B',
//               location: 'San Francisco',
//               jobTitle: 'Data Analyst',
//             ),
//             CompanyListing(
//               companyName: 'Company C',
//               location: 'London',
//               jobTitle: 'Marketing Specialist',
//             ),
//             // Add more CompanyListing widgets here for additional companies
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CompanyListing extends StatelessWidget {
//   final String companyName;
//   final String location;
//   final String jobTitle;

//   CompanyListing({
//     required this.companyName,
//     required this.location,
//     required this.jobTitle,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 20.0),
//       padding: EdgeInsets.all(20.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10.0),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Icon(
//             Icons.business,
//             size: 30.0,
//             color: Colors.blue,
//           ),
//           SizedBox(width: 20.0),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Company Name: $companyName',
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 5.0),
//                 Text(
//                   'Location: $location',
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     color: Colors.grey[700],
//                   ),
//                 ),
//                 SizedBox(height: 5.0),
//                 Text(
//                   'Job: $jobTitle',
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     color: Colors.grey[700],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

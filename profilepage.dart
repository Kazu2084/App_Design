import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.grey[200],
              child: Icon(
                Icons.person,
                size: 120,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text(
                'Name:',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                'John Doe',
                style: TextStyle(
                  fontFamily: 'Raleway',
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Email:',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                'johndoe@example.com',
                style: TextStyle(
                  fontFamily: 'Raleway',
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Phone:',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                '+1234567890',
                style: TextStyle(
                  fontFamily: 'Raleway',
                ),
              ),
            ),
            // Add more ListTile widgets for additional user details
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
    theme: ThemeData(fontFamily: 'Raleway'),
  ));
}

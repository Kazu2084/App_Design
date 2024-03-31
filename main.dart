import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'FYP',
            style: TextStyle(
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: double.infinity,
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Welcome, User',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "How's your day?",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EmojiContainer('assets/sad.png', size: 60),
                        EmojiContainer('assets/sad.png', size: 60),
                        EmojiContainer('assets/sad.png', size: 60),
                        EmojiContainer('assets/sad.png', size: 60),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 525,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(30.0),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 30.0, left: 20.0, right: 20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Calendar',
                                        style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontSize: 20.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'View',
                                        style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontSize: 16.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 70.0,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 7,
                                    itemBuilder: (context, index) {
                                      // Logic to generate calendar dates
                                      return Container(
                                        width: 60.0,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: index ==
                                                  DateTime.now().weekday - 1
                                              ? Colors.blue
                                              : Colors.transparent,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              (index + 1).toString(),
                                              style: TextStyle(
                                                fontFamily: 'Raleway',
                                                fontSize: 20.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              DateFormat.E().format(
                                                  DateTime.now().add(
                                                      Duration(days: index))),
                                              // "Text",
                                              style: TextStyle(
                                                fontFamily: 'Raleway',
                                                fontSize: 16.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 1,
                                  height: 20,
                                  indent: 10,
                                  endIndent: 10,
                                ),
                                SizedBox(height: 10.0),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Task Manager',
                                        style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontSize: 20.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'View',
                                        style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontSize: 16.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Task manager tiles
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Column(
                                    children: [
                                      TaskTile(
                                          title: 'Task 1',
                                          description: 'Description of Task 1'),
                                      TaskTile(
                                          title: 'Task 2',
                                          description: 'Description of Task 2'),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 1,
                                  height: 20,
                                  indent: 10,
                                  endIndent: 10,
                                ),
                                SizedBox(height: 10.0),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'News and Updates',
                                        style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontSize: 20.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'View',
                                        style: TextStyle(
                                          fontFamily: 'Raleway',
                                          fontSize: 16.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // News section tiles
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Column(
                                    children: [
                                      NewsTile(
                                        image: 'assets/library.jpeg',
                                        title: 'News Title 1',
                                        description: 'Description of News 1',
                                      ),
                                      NewsTile(
                                        image: 'assets/library.jpeg',
                                        title: 'News Title 2',
                                        description: 'Description of News 2',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskTile extends StatelessWidget {
  final String title;
  final String description;

  TaskTile({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(description),
    );
  }
}

class NewsTile extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  NewsTile(
      {required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 80, // Adjust this width as needed
        height: 80, // Set the height equal to the width
        child: Image.asset(image, fit: BoxFit.cover),
      ),
      title: Text(title),
      subtitle: Text(description),
    );
  }
}

class EmojiContainer extends StatelessWidget {
  final String emojiAsset;
  final double size;

  EmojiContainer(this.emojiAsset, {this.size = 40});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Image.asset(
          emojiAsset,
          width: size * 0.8,
          height: size * 0.8,
        ),
      ),
    );
  }
}

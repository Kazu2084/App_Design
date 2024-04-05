import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Tables in a Single Row'),
      ),
      body: Center(
        child: MyTables(),
      ),
    ),
  ));
}

class MyTables extends StatefulWidget {
  @override
  _MyTablesState createState() => _MyTablesState();
}

class _MyTablesState extends State<MyTables> {
  List<Map<String, dynamic>> statistics = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http
        .get(Uri.parse('http://localhost/fyp/app/dashboard/placement.php'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      setState(() {
        statistics = responseData.entries
            .map((entry) => {'name': entry.key, 'value': entry.value ?? 'N/A'})
            .toList();
      });
    } else {
      print('Failed to load statistics');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistics'),
      ),
      body: ListView.builder(
        itemCount: (statistics.length / 2).ceil(),
        itemBuilder: (context, index) {
          final firstIndex = index * 2;
          final secondIndex = firstIndex + 1;
          return Row(
            children: [
              Expanded(
                child: statisticCard(statistics[firstIndex]),
              ),
              SizedBox(width: 8.0),
              Expanded(
                child: secondIndex < statistics.length
                    ? statisticCard(statistics[secondIndex])
                    : SizedBox.shrink(),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget statisticCard(Map<String, dynamic> statistic) {
    return statistic != null
        ? Card(
            color: Colors.white,
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.black, width: 1.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      statistic['name'] ?? 'N/A',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Center(
                    child: Text(
                      '${statistic['value']}' ?? 'N/A',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : SizedBox.shrink();
  }
}

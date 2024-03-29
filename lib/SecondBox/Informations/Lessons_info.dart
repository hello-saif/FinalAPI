import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LessonsInfo extends StatefulWidget {
  const LessonsInfo({Key? key}) : super(key: key);

  @override
  _LessonsInfoState createState() => _LessonsInfoState();
}

class _LessonsInfoState extends State<LessonsInfo> {
  late List<Map<String, dynamic>> items2;

  @override
  void initState() {
    super.initState();
    fetchItems();
  }
  @override
  Widget build(BuildContext context) {
    if (items2 == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return Align(
      alignment: Alignment.topLeft,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: items2.map((item) {
            return SizedBox(
              width: 300,
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image Row
                      Row(
                        children: [
                          // Image
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            // Adjust border radius as needed
                            child: Image.network(
                              'https://images.agoramedia.com/wte3.0/gcms/When-and-How-to-Burp-Your-Baby-article.jpg',
                              width: 282, // Make the image width match the box width
                              height: 125, // Adjust image height as needed
                              fit: BoxFit.cover, // Ensure image covers the entire area of the box
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // Text Row
                      Row(
                        children: [
                          // Column for text
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0), // Add padding here
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Text: Category
                                  Text(
                                    item['category'],
                                    style: const TextStyle(fontSize: 12, color: Colors.blue),
                                  ),
                                  const SizedBox(height: 0),
                                  // Text: Name
                                  Text(
                                    item['name'],
                                    style: const TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 5),
                                  // Text: Duration
                                  Row(
                                    children: [
                                      Text(
                                        '${item['duration']} min',
                                        style: TextStyle(fontSize: 10, color: Colors.blueGrey),
                                      ),
                                      const SizedBox(width: 200),
                                      Icon(item['locked'] ? Icons.lock : Icons.lock_open),
                                      // Adjust the width as needed
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
  Future<void> fetchItems() async {
    final response = await http.get(Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/lessons'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      setState(() {
        items2 = List<Map<String, dynamic>>.from(jsonData['items']);
      });
    } else {
      throw Exception('Failed to load items');
    }
  }
}

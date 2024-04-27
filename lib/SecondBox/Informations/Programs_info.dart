import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DescriptionsWidget extends StatefulWidget {
  const DescriptionsWidget({Key? key, required List items}) : super(key: key);

  @override
  _DescriptionsWidgetState createState() => _DescriptionsWidgetState();
}

class _DescriptionsWidgetState extends State<DescriptionsWidget> {
  late List<Map<String, dynamic>> items;

  @override
  void initState() {
    super.initState();
    fetchItems();
  }
  @override
  Widget build(BuildContext context) {
    if (items == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return Align(
      alignment: Alignment.topLeft,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: items.map((item) {
            return SizedBox(
              width: 300,
              height: 310,
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
                      // Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://w7.pngwing.com/pngs/895/199/png-transparent-spider-man-heroes-download-with-transparent-background-free-thumbnail.png',
                          width: 282,
                          height: 125,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Text Row
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['createdAt'],
                                    style: const TextStyle(fontSize: 12, color: Colors.blue),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    item['category'],
                                    style: const TextStyle(fontSize: 12, color: Colors.blue),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    item['name'],
                                    style: const TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    '${item['lesson']} lessons',
                                    style: const TextStyle(fontSize: 10, color: Colors.blueGrey),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    item['id'],
                                    style: const TextStyle(fontSize: 10, color: Colors.blueGrey),
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
    final response = await http.get(Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/programs'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      setState(() {
        items = List<Map<String, dynamic>>.from(jsonData['items']);
      });
    } else {
      throw Exception('Failed to load items');
    }
  }
}

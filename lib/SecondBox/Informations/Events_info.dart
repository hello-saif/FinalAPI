import 'package:flutter/material.dart';

class EventsInfoWidget extends StatelessWidget {
  const EventsInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 300, // Adjust box width as needed
              height: 250, // Adjust box height as needed
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
                              'https://www.babycarehomeservicesdhaka.com.bd/wp-content/uploads/2019/10/Baby-Care-BD.jpg',
                              width: 282, // Make the image width match the box width
                              height: 125, // Adjust image height as needed
                              fit: BoxFit.cover, // Ensure image covers the entire area of the box
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // Text Row
                      const Row(
                        children: [
                          // Column for text
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0), // Add padding here
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Text: Babycare
                                  Text(
                                    'Babycare',
                                    style: TextStyle(fontSize: 12, color: Colors.blue),
                                  ),
                                  SizedBox(height: 0),
                                  // Text: Description
                                  Text(
                                    'Understanding of human behaviour',
                                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 1),
                                  // Row for date and chip
                                  Row(
                                    children: [
                                      // Text: Date
                                      Text(
                                        '13 Feb, Sunday',
                                        style: TextStyle(fontSize: 10, color: Colors.blueGrey),
                                      ),
                                      SizedBox(width: 140,),
                                      // Chip with background color
                                      Chip(
                                        label: Text('Book'),
                                        backgroundColor: Colors.blueGrey,
                                      ),
                                      Spacer(),
                                    ],
                                  ),
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
            ),
            SizedBox(
              width: 300, // Adjust box width as needed
              height: 250, // Adjust box height as needed
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
                              'https://www.babycarehomeservicesdhaka.com.bd/wp-content/uploads/2019/10/Baby-Care-BD.jpg',
                              width: 282, // Make the image width match the box width
                              height: 125, // Adjust image height as needed
                              fit: BoxFit.cover, // Ensure image covers the entire area of the box
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // Text Row
                      const Row(
                        children: [
                          // Column for text
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0), // Add padding here
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Text: Babycare
                                  Text(
                                    'Babycare',
                                    style: TextStyle(fontSize: 12, color: Colors.blue),
                                  ),
                                  SizedBox(height: 0),
                                  // Text: Description
                                  Text(
                                    'Understanding of human behaviour',
                                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 1),
                                  // Row for date and chip
                                  Row(
                                    children: [
                                      // Text: Date
                                      Text(
                                        '13 Feb, Sunday',
                                        style: TextStyle(fontSize: 10, color: Colors.blueGrey),
                                      ),
                                      SizedBox(width: 140,),
                                      // Chip with background color
                                      Chip(
                                        label: Text('Book'),
                                        backgroundColor: Colors.blueGrey,
                                      ),
                                      Spacer(),
                                    ],
                                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}

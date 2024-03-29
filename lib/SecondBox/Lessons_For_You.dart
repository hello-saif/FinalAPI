import 'package:flutter/material.dart';

class LessonsForYouWidget extends StatelessWidget {
  const LessonsForYouWidget({super.key, required List items2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 8),
          Text(
            'Lessons for you',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 150),
          Text(
            'View All',
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
          Icon(
            Icons.east_rounded,
            size: 20,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

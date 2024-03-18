import 'package:flutter/material.dart';

class EventAndExperienceWidget extends StatelessWidget {
  const EventAndExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 8),
          Text(
            'Events and experiences',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 100),
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

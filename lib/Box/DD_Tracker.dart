import 'package:flutter/material.dart';

class DDTrackerWidget extends StatelessWidget {
  const DDTrackerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: 70, // Adjust the height as needed
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.white60,
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(10),// Set border color to blue
          ),
          child: const Row(
            children: [
              Icon(Icons.spatial_tracking, color: Colors.blue), // Add icon
              SizedBox(width: 20), // Add some spacing between icon and text
              Text(
                'DD Tracker',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

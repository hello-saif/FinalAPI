import 'package:flutter/material.dart';

import '../Box/DD_Tracker.dart';
import '../Box/Get_help.dart';
import '../Box/Learn.dart';
import '../Box/Programs.dart';
import '../SecondBox/Events.dart';
import '../SecondBox/Informations/Events_info.dart';
import '../SecondBox/Informations/Lessons_info.dart';
import '../SecondBox/Informations/Programs_info.dart';
import '../SecondBox/Lessons_For_You.dart';
import '../SecondBox/Programs_For_You.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 52,),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Hello, Priya!',
            style: TextStyle(fontSize: 30),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'What do you wanna learn today ?',
            style: TextStyle(fontSize: 15),
          ),
        ),

        const SizedBox(height: 20), // Add some spacing between the text and boxes
        Expanded(
          child:Scrollbar(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Existing rows of boxes
                  const Row(
                    children: [
                      ProgramsWidget(),
                      GetHelpWidget(),
                    ],
                  ),
                  const SizedBox(height: 10), // Add spacing between rows of boxes
                  const Row(
                    children: [
                      LearnWidget(),
                      DDTrackerWidget(),
                    ],
                  ),
                  // New box with image and text
                  Card(
                    margin: const EdgeInsets.all(16), // Adjust margin as needed
                    elevation: 4, // Add elevation for a shadow effect
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        ProgramsForYouWidget(),
                        const SizedBox(height: 20,),
                        DescriptionsWidget(),
                        const SizedBox(height: 20,),
                        EventAndExperienceWidget(),
                        const SizedBox(height: 20,),
                        EventsInfoWidget(),
                        const SizedBox(height: 20,),
                        LessonsForYouWidget(),
                        const SizedBox(height: 20,),
                        LessonsInfo(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

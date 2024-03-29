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
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 52,),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Hello, Priya!',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'What do you wanna learn today ?',
            style: TextStyle(fontSize: 15),
          ),
        ),

        SizedBox(height: 20), // Add some spacing between the text and boxes
        Expanded(
          child:Scrollbar(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Existing rows of boxes
                  Row(
                    children: [
                      ProgramsWidget(),
                      GetHelpWidget(),
                    ],
                  ),
                  SizedBox(height: 10), // Add spacing between rows of boxes
                  Row(
                    children: [
                      LearnWidget(),
                      DDTrackerWidget(),
                    ],
                  ),
                  // New box with image and text
                  Card(
                    margin: EdgeInsets.all(16), // Adjust margin as needed
                    elevation: 4, // Add elevation for a shadow effect
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        ProgramsForYouWidget(),
                        SizedBox(height: 20,),
                        DescriptionsWidget(items: [],),
                        SizedBox(height: 20,),
                        EventAndExperienceWidget(),
                        SizedBox(height: 20,),
                        EventsInfoWidget(),
                        SizedBox(height: 20,),
                        LessonsForYouWidget(items2:[],),
                        SizedBox(height: 20,),
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

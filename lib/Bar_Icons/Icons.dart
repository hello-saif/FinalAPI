import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Main_File/Main_All_File.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.blueGrey),
          onPressed: () {
            // Add navigation drawer functionality
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.message_outlined, color: Colors.blueGrey),
            onPressed: () {
              // Add search functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.blueGrey),
            onPressed: () {
              // Add notifications functionality
            },
          ),
        ],
      ),
      body: MainSection(),

      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.deepOrange),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard_rounded, color: Colors.deepOrange),
            label: 'Learn',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.hub, color: Colors.deepOrange),
            label: 'Hub',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble, color: Colors.deepOrange),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                // Add your onTap functionality here
              },
              child: const CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage('https://w7.pngwing.com/pngs/895/199/png-transparent-spider-man-heroes-download-with-transparent-background-free-thumbnail.png'), // Replace with your image URL
              ),
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueGrey,
        onTap: _onItemTapped,
      ),

    );
  }
}
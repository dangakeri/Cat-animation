import 'package:animation/main.dart';
import 'package:animation/src/screens/audio.dart';
import 'package:animation/src/screens/home.dart';
import 'package:animation/src/screens/notifications.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int index = 0;
  List pages = [
    Home(),
    Audio(),
    Notification_page(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: 'Home',
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
              icon: Icon(Icons.speaker),
              label: 'Audio',
              activeIcon: Icon(Icons.speaker)),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
              activeIcon: Icon(Icons.notifications)),
        ],
      ),
    );
  }
}

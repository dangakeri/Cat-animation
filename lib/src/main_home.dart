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
      appBar: AppBar(
        title: const Text('Animation'),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 50,
              width: 20,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              selectedColor: Colors.black,
              iconColor: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              subtitle: Text('About developer'),
              selectedColor: Colors.black,
              iconColor: Colors.black,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
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

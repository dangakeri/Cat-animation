import 'package:flutter/material.dart';
import 'main_home.dart';
import 'screens/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animation',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MainHome(),
    );
  }
}

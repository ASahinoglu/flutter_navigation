import 'package:flutter/material.dart';
import 'package:flutter_navigation/news_screen.dart';
import 'package:flutter_navigation/likes_screen.dart';
import 'package:flutter_navigation/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.lime),
      home: AppHome(),
    );
  }
}

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const NewsScreen(),
    const LikesScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    // Funktion zur Aktualisierung des Index
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MyApp'), backgroundColor: Colors.lime),
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        // Hinzufügen der NavigationBar
        selectedIndex: _currentIndex, // Aktueller ausgewählter Index
        onDestinationSelected: (int index) {
          // Callback, wenn ein Ziel ausgewählt wird
          _onItemTapped(index); // Aktualisiert den Index und den Screen
        },
        destinations: const <NavigationDestination>[
          // Die Navigationsziele
          NavigationDestination(icon: Icon(Icons.newspaper), label: 'News'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Likes'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

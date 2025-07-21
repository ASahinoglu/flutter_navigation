import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20.0),
          Text(
            'Profile',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Icon(Icons.person, size: 80.0),
          SizedBox(height: 20.0),
          Text(
            'Max Mustermann', // Beispielname
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}

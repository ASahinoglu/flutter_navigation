import 'package:flutter/material.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20.0),
          Text(
            'Likes',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text(
            'Hier findest du deine gelikten Nachrichten.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

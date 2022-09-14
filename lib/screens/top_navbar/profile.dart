import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.menu),
          SizedBox(width: 15),
        ],
      ),
      body: const Center(
        child: Text(
          'Profile',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}

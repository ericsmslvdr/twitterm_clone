import 'package:flutter/material.dart';
import 'package:navigation_prac/const.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.menu),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          Image.asset('assets/literates_bg.png'),
        ],
      ),
    );
  }
}

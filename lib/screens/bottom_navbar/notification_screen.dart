import 'package:flutter/material.dart';
import 'package:navigation_prac/const.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        decoration: const BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(
              color: Colors.white24,
            ),
          ),
        ),
        child: const Center(
          child: Text(
            'Notifications',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

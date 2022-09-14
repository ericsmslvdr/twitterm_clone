import 'package:flutter/material.dart';
import 'package:navigation_prac/const.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
            'Search',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

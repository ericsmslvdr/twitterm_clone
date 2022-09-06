import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home'),
      // ),
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}

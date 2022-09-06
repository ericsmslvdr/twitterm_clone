import 'package:flutter/material.dart';

class SpacePage extends StatelessWidget {
  const SpacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text('Spaces'),
      // ),
      body: Center(
        child: Text(
          'Space Page',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}

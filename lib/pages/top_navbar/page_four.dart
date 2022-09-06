import 'package:flutter/material.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Four'),
      ),
      body: const Center(
        child: Text(
          'Page One',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}

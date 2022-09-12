import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Three'),
      ),
      body: const Center(
        child: Text(
          'Page Three',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}

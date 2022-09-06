import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text('Messages'),
      // ),
      body: Center(
        child: Text(
          'Message Page',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}

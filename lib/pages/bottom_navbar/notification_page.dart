import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      // appBar: AppBar(
      //   title: const Text('Notifications'),
      // ),
      body: Center(
        child: Text(
          'Notification Page',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}

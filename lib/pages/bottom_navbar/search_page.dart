import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      // appBar: AppBar(
      //   title: const Text('Search'),
      // ),
      body: Center(
        child: Text(
          'Search Page',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}

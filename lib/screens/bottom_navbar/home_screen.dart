import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(
              color: Colors.white24,
            ),
          ),
        ),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, index) {
            return Container(
              color: Colors.white10,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/nu_literates.jpg'),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

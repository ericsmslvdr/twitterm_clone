import 'package:flutter/material.dart';
import 'package:twitterm_clone/const.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.menu),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          Image.asset('assets/literates_bg.png'),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/nu_literates.jpg'),
                      radius: 30,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      child: const Text('Edit profile'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'NU Literates',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  '@NULiterates',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'We are the Society of Literates in Information Technology (SOCLIT), the official academic organization of National University - Baliwag\'s Information Technology Department.\n\nEmail: literates@nu-baliwag.edu.ph',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: const TextSpan(
                    text: '12 ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: 'Following    ',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                      TextSpan(text: '1,436 '),
                      TextSpan(
                        text: 'Followers',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
          itemCount: 3,
          itemBuilder: (BuildContext context, index) {
            return Container(
              constraints: const BoxConstraints(minHeight: 100),
              decoration: const BoxDecoration(
                // color: Colors.white10,
                border: Border(
                  bottom: BorderSide(color: Colors.white24),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/nu_literates.jpg'),
                      radius: 25,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'NU Literates  ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '@NULiterates - 01 Sept',
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Heads up! Literates 💛💙\n\nAre you frustrated by the lack of features in Facebook Messenger? Such as creating multiple group chats for different courses or back-reading an important chat that was covered by piles of memes sent by your classmates.😑\n\nNo more frustrations, as the NU Literates will now be switching from Facebook Messenger to Discord as our official form of communication! 👀\n\nBy joining the official Discord server of NU Literates, more opportunities for communication will be unlocked. 🔓 The Literates will now have easier access to announcements and important messages (no-more back-reading😅), plus the option to use Discord Bots! 🤖 You better be ready, Discord peeps.✨\n\nTo join the Official Discord Server, click the link below\n\nhttps://bit.ly/NULiteratesDiscord2022\nhttps://bit.ly/NULiteratesDiscord2022\nhttps://bit.ly/NULiteratesDiscord2022\n\n#NULiterates',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              maxLines: 10,
                            ),
                            const SizedBox(height: 10),
                            Image.asset(
                              'assets/relaunch_dc.jpg',
                            )
                          ],
                        ),
                      ),
                    ),
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

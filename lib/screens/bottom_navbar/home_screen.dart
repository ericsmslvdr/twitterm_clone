import 'package:flutter/material.dart';
import 'package:twitterm_clone/const.dart';
import 'package:twitterm_clone/posts/post.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        decoration: const BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(
              color: Colors.white24,
            ),
          ),
        ),
        child: ListView(
          children: const [
            Post(
              userImg: 'assets/nu_literates.jpg',
              userName: 'NU Literates',
              userInfo: '@NULiterates - 1d',
              textContent:
                  'They\'re here!♥💙💚💛\n\nMeet NU Literates\' and GDSC NU Baliwag\'s Official Mascots!✨\n\nMeet them on our future events!\nSee you around Developers!\n!♥💙💚💛\n\nArtists : Hanz Chico, Janna Pascua... See more ',
              imagePost: 'assets/mascots.png',
              comments: '121',
              retweets: '231',
              likes: '404',
            ),
            Post(
              userImg: 'assets/gdsc_nub.jpg',
              userName: 'GDSC NU Baliwag',
              userInfo: '@GDSCNU - 4d',
              textContent:
                  'Welcome to Google Developer Student Clubs! 💙💛💚❤️\n\nWe now have our Core Members! Congratulations to all who have received their GDSC Membership Certification on their school accounts!\n\nWhat are the next steps?\n- Please standby as we add you to the Class Teams. Exclusive announcements will now be posted there.\n- We will be having an Info Session and Onboarding soon. We are... See more',
              imagePost: 'assets/cert.png',
              comments: '121',
              retweets: '189',
              likes: '344',
            ),
            Post(
              userImg: 'assets/nu_literates.jpg',
              userName: 'NU Literates',
              userInfo: '@NULiterates - 02 Sept',
              textContent:
                  'Heads up! Literates 💛💙\n\nAre you frustrated by the lack of features in Facebook Messenger? Such as creating multiple group chats for different courses or back-reading an important chat that was covered by piles of memes sent by your classmates.😑\n\nNo more frustrations, as the NU Literates will now be switching from Facebook Messenger to Discord... \nSee more',
              imagePost: 'assets/relaunch_dc.jpg',
              comments: '95',
              retweets: '567',
              likes: '201',
            ),
          ],
        ),
      ),
    );
  }
}

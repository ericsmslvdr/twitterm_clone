import 'package:flutter/material.dart';
import 'package:twitterm_clone/const.dart';
import 'package:twitterm_clone/screens/bottom_navbar/home_screen.dart';
import 'package:twitterm_clone/screens/bottom_navbar/message_screen.dart';
import 'package:twitterm_clone/screens/bottom_navbar/notification_screen.dart';
import 'package:twitterm_clone/screens/bottom_navbar/search_screen.dart';
import 'package:twitterm_clone/screens/top_navbar/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final screens = [
    const HomeScreen(),
    const SearchScreen(),
    const NotificationScreen(),
    const MessageScreen(),
  ];

  void click() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: RawMaterialButton(
        onPressed: () {},
        fillColor: Colors.blue,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(15),
        child: const Icon(
          Icons.control_point_duplicate_sharp,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: Builder(
          builder: (context) => GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/nu_literates.jpg'),
              ),
            ),
            onTap: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.stream),
          ),
        ],
        flexibleSpace: SafeArea(
          child: Image.asset('assets/bulldog.png'),
        ),
      ),
      drawer: Drawer(
        backgroundColor: bgColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 220,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.white24),
                  ),
                  color: bgColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      foregroundImage: AssetImage('assets/nu_literates.jpg'),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'NU Literates',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      '@NULiterates',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 16,
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
            ),
            ListTile(
              title: const Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              leading: const Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
              minLeadingWidth: 10,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const Profile();
                  }),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Lists',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              leading: const Icon(
                Icons.library_books_outlined,
                color: Colors.white,
              ),
              minLeadingWidth: 10,
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Topics',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              leading: const Icon(
                Icons.message_outlined,
                color: Colors.white,
              ),
              minLeadingWidth: 10,
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Twitter Circle',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              leading: const Icon(
                Icons.person_search_outlined,
                color: Colors.white,
              ),
              minLeadingWidth: 10,
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Bookmarks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              leading: const Icon(
                Icons.bookmark_border,
                color: Colors.white,
              ),
              minLeadingWidth: 10,
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Moments',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              leading: const Icon(
                Icons.thunderstorm_outlined,
                color: Colors.white,
              ),
              minLeadingWidth: 10,
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Monetization',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              leading: const Icon(
                Icons.money,
                color: Colors.white,
              ),
              minLeadingWidth: 10,
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Follower requests',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              leading: const Icon(
                Icons.person_search_outlined,
                color: Colors.white,
              ),
              minLeadingWidth: 10,
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Twitter for Professionals',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              leading: const Icon(
                Icons.rocket_launch_outlined,
                color: Colors.white,
              ),
              minLeadingWidth: 10,
              onTap: () {},
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.white24),
                  bottom: BorderSide(color: Colors.white24),
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Settings and privacy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text(
                      'Help Center',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text(
                'Automatic',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              leading: const Icon(
                Icons.lightbulb_outline,
                color: Colors.white,
              ),
              minLeadingWidth: 10,
              onTap: () {},
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        backgroundColor: bgColor,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            label: 'Messages',
          ),
        ],
      ),
    );
  }
}

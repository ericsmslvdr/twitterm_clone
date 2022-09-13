import 'package:flutter/material.dart';
import 'package:navigation_prac/screens/bottom_navbar/home_screen.dart';
import 'package:navigation_prac/screens/bottom_navbar/message_screen.dart';
import 'package:navigation_prac/screens/bottom_navbar/notification_screen.dart';
import 'package:navigation_prac/screens/bottom_navbar/search_screen.dart';
import 'package:navigation_prac/screens/top_navbar/profile.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Builder(
          builder: (context) => GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(left: 20),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/nu_literates.jpg'),
              ),
            ),
            onTap: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.stream),
          ),
        ],
        flexibleSpace: SafeArea(
          child: Image.asset('assets/woofer_logo.png'),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.white24),
                ),
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    radius: 30,
                    foregroundImage: AssetImage('assets/nu_literates.jpg'),
                  ),
                  Text(
                    'NU Literates',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '@NULiterates',
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
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
                ),
              ),
              leading: const Icon(
                Icons.library_books_outlined,
                color: Colors.white,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Topics',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.message_outlined,
                color: Colors.white,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Woofer Circle',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.person_search_outlined,
                color: Colors.white,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Bookmarks',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.bookmark_border,
                color: Colors.white,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      // body: screens[currentIndex],
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        backgroundColor: Colors.black,
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

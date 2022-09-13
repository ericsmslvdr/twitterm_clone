import 'package:flutter/material.dart';
import 'package:navigation_prac/screens/bottom_navbar/home_screen.dart';
import 'package:navigation_prac/screens/bottom_navbar/message_screen.dart';
import 'package:navigation_prac/screens/bottom_navbar/notification_screen.dart';
import 'package:navigation_prac/screens/bottom_navbar/search_screen.dart';
import 'package:navigation_prac/screens/top_navbar/page_four.dart';
import 'package:navigation_prac/screens/top_navbar/page_one.dart';
import 'package:navigation_prac/screens/top_navbar/page_three.dart';
import 'package:navigation_prac/screens/top_navbar/page_two.dart';

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
                foregroundImage: AssetImage('assets/pic-me.png'),
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
                    foregroundImage: AssetImage('assets/pic-me.png'),
                  ),
                  Text(
                    'Eric Samuel Salvador',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '@ericsslvdr',
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text(
                'Page One',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.groups,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const PageOne();
                  }),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Page Two',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.ac_unit_rounded,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const PageTwo();
                  }),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Page Three',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const PageThree();
                  }),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Page Four',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.work_rounded,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const PageFour();
                  }),
                );
              },
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

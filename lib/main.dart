import 'package:flutter/material.dart';
import 'package:navigation_prac/pages/bottom_navbar/spaces_page.dart';
import 'package:navigation_prac/pages/bottom_navbar/messages_page.dart';
import 'package:navigation_prac/pages/bottom_navbar/notification_page.dart';
import 'package:navigation_prac/pages/bottom_navbar/search_page.dart';
import 'package:navigation_prac/pages/bottom_navbar/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
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

  final pages = [
    const HomePage(),
    const SearchPage(),
    const SpacePage(),
    const NotificationPage(),
    const MessagesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing'),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: ExactAssetImage('assets/pic-me.png'),
                    ),
                    Text('Eric Samuel Salvador'),
                    Text(
                      'ericsslvdr',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text('Page One'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Page One'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Page One'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Page One'),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
            icon: Icon(Icons.spatial_tracking_rounded),
            label: 'Spaces',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_rounded),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Messages',
          ),
        ],
      ),
    );
  }
}
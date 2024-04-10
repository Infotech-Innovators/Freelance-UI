// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/pages/gifts_page.dart';
import 'package:freelance_ui/pages/home_page.dart';
import 'package:freelance_ui/pages/leaderboards_page.dart';
import 'package:freelance_ui/pages/play_with_friends_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const LeaderBoardsPage(),
    const PlayWithFriendsPage(),
    const GiftsPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'LEADERBOARDS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'PLAY WITH FRIENDS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard_sharp),
            label: 'GIFTS',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 16, 16, 16),
        unselectedItemColor: const Color.fromARGB(255, 124, 117, 117),
        selectedFontSize: 13.sp,
        unselectedFontSize: 8.sp,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}

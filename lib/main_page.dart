// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/pages/gifts_page.dart';
import 'package:freelance_ui/pages/home_page.dart';
import 'package:freelance_ui/pages/leaderboards_page.dart';
import 'package:freelance_ui/pages/play_with_friends_page.dart';
import 'package:freelance_ui/utils.dart';
import 'package:freelance_ui/widgets/app_bar_widget.dart';

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
    return DefaultTabController(
        initialIndex: 0,
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColor.primaryColor,
            title: const AppBarWidget(),
            bottom: _selectedIndex == 0
                ? TabBar(
                    labelStyle:
                        TextStyle(fontSize: 8.sp, color: AppColor.whiteColor),
                    indicatorColor: AppColor.whiteColor,
                    labelColor: AppColor.whiteColor,
                    unselectedLabelColor: AppColor.whiteColor,
                    tabs: const <Widget>[
                      Tab(
                        icon: Icon(Icons.deblur),
                        text: 'STOCKS',
                      ),
                      Tab(
                        icon: Icon(Icons.abc_outlined),
                        text: 'COMMODITIES',
                      ),
                      Tab(
                        icon: Icon(Icons.golf_course_sharp),
                        text: 'CRYPTO',
                      ),
                      Tab(
                        icon: Icon(Icons.cloud_outlined),
                        text: 'COURSES',
                      ),
                      Tab(
                        icon: Icon(Icons.beach_access_sharp),
                        text: 'COMMUNITY',
                      ),
                    ],
                  )
                : const PreferredSize(
                    preferredSize: Size(0, 0), child: SizedBox()),
          ),
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
            selectedLabelStyle: TextStyle(
              color: Colors.blueAccent,
              fontSize: 10.sp,
            ),
            unselectedFontSize: 8.sp,
            showUnselectedLabels: true,
            onTap: _onItemTapped,
          ),
        ));
  }
}

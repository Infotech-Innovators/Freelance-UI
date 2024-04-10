import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/tab_bar_pages/commodities_page.dart';
import 'package:freelance_ui/tab_bar_pages/community_page.dart';
import 'package:freelance_ui/tab_bar_pages/courses_page.dart';
import 'package:freelance_ui/tab_bar_pages/crypto_page.dart';
import 'package:freelance_ui/tab_bar_pages/stocks_page.dart';
import 'package:freelance_ui/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
          title: const Text('TabBar Sample'),
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 8.sp, color: AppColor.whiteColor),
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
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            StocksPage(),
            CommoditiesPage(),
            CryptoPage(),
            CoursesPage(),
            CommunityPage()
          ],
        ),
      ),
    );
  }
}

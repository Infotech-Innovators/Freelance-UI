import 'package:flutter/material.dart';
import 'package:freelance_ui/tab_bar_pages/commodities_page.dart';
import 'package:freelance_ui/tab_bar_pages/community_page.dart';
import 'package:freelance_ui/tab_bar_pages/courses_page.dart';
import 'package:freelance_ui/tab_bar_pages/crypto_page.dart';
import 'package:freelance_ui/tab_bar_pages/stocks_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: <Widget>[
        StocksPage(),
        CommoditiesPage(),
        CryptoPage(),
        CoursesPage(),
        CommunityPage()
      ],
    );
  }
}

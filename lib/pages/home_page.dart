import 'package:flutter/material.dart';
import 'package:freelance_ui/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text(
                "It's cloudy here",
                style: TextStyle(color: AppColor.pinkColor),
              ),
            ),
            Center(
              child: Text(
                "It's rainy here",
                style: TextStyle(color: AppColor.pinkColor),
              ),
            ),
            Center(
              child: Text(
                "It's sunny here",
                style: TextStyle(color: AppColor.pinkColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

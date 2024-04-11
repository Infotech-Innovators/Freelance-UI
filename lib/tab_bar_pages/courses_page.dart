import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/widgets/button_container_widget.dart';
import 'package:freelance_ui/widgets/video_playing_widget.dart';
import 'package:freelance_ui/widgets/video_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  bool _isCoursesActive = false;
  int _currentIndex = 0;

  List<String> images = [
    'https://via.placeholder.com/200',
    'https://via.placeholder.com/200',
    'https://via.placeholder.com/200',
    'https://via.placeholder.com/200',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_isCoursesActive == false) {
                        _isCoursesActive = !_isCoursesActive;
                      }
                    });
                  },
                  child: ButtonContainerWidget(
                    text: "COURSES",
                    isActive: _isCoursesActive,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_isCoursesActive == true) {
                          _isCoursesActive = !_isCoursesActive;
                        }
                      });
                    },
                    child: ButtonContainerWidget(
                      text: "MY LIBRARY",
                      isActive: !_isCoursesActive,
                    ))
              ],
            ),
          ),
          if (_isCoursesActive) ...[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              child: Container(
                color: Colors.white,
                height: 47.h,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r))),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            CarouselSlider(
              items: images.map((image) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  height: 150.h,
                  width: double.maxFinite,
                  color: Colors.redAccent,
                  child: Center(
                    child: Text('Container-$_currentIndex'),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 150.h,
                enlargeCenterPage: false,
                autoPlay: false,
                aspectRatio: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              for (int i = 0; i < images.length; i++) ...[
                Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 2.w),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == i ? Colors.blueAccent : Colors.grey,
                  ),
                )
              ]
            ]),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  "FUNDAMENTALS",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 170, 167, 167),
                      fontSize: 17.sp),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 1.5.h,
              width: double.maxFinite,
              color: Colors.grey,
            ),
            for (int i = 0; i < 2; i++) ...[
              SizedBox(
                height: 10.h,
              ),
              const VideoWidget(),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 1.5.h,
                width: double.maxFinite,
                color: Colors.grey,
              ),
            ],
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  "TECHNICALS",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 170, 167, 167),
                      fontSize: 17.sp),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 1.5.h,
              width: double.maxFinite,
              color: Colors.grey,
            ),
            for (int i = 0; i < 2; i++) ...[
              SizedBox(
                height: 10.h,
              ),
              const VideoWidget(),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 1.5.h,
                width: double.maxFinite,
                color: Colors.grey,
              ),
            ],
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  "PSYCOLOGY",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 170, 167, 167),
                      fontSize: 17.sp),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 1.5.h,
              width: double.maxFinite,
              color: Colors.grey,
            ),
            for (int i = 0; i < 2; i++) ...[
              SizedBox(
                height: 10.h,
              ),
              const VideoWidget(),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 1.5.h,
                width: double.maxFinite,
                color: Colors.grey,
              ),
            ]
          ] else ...[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              child: Container(
                color: Colors.white,
                height: 47.h,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r))),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  "Trailer- Beginner's Course",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const VideoPlayingWidget()
          ]
        ],
      ),
    );
  }
}

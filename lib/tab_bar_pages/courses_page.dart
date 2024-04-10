import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/widgets/button_container_widget.dart';
import 'package:freelance_ui/widgets/video_widget.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonContainerWidget(
                  text: "COURSES",
                  isActive: true,
                ),
                ButtonContainerWidget(
                  text: "MY LIBRARY",
                  isActive: false,
                )
              ],
            ),
          ),
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
          //TODO: CRAUSEL SLIDER
          SizedBox(
            height: 10.h,
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
        ],
      ),
    );
  }
}

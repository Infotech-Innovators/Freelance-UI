import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/utils.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80.h,
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
            width: 124.w,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 155, 210, 255),
              Color.fromARGB(255, 77, 175, 255),
            ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 25.h,
                  width: 50.w,
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Center(
                    child: Text(
                      "00:34",
                      style: TextStyle(color: Colors.white, fontSize: 12.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5.h,
          ),
          Container(
            padding: EdgeInsets.only(top: 10.h),
            width: 160.w,
            child: Text(
              "Trailer- Beginner's Course",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15.h),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 25.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 2.h),
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Center(
                      child: Text(
                        "PLAY",
                        style: TextStyle(color: Colors.white, fontSize: 12.sp),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Text(
                    "₹ 30",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

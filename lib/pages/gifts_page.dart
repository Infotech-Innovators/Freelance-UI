import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/utils.dart';

class GiftsPage extends StatefulWidget {
  const GiftsPage({super.key});

  @override
  State<GiftsPage> createState() => _GiftsPageState();
}

class _GiftsPageState extends State<GiftsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 90.h,
                    width: 160.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Column(
                      children: [
                        const Text(
                          "FREE COINS ",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.w),
                          height: 35.h,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          child: const Text("100 Coins "),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 90.h,
                    width: 160.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Column(
                      children: [
                        const Text(
                          "FREE COINS ",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.w),
                          height: 35.h,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          child: const Text(
                            "100 Coins ",
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              height: 50.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  border: Border.all(color: Colors.black)),
              child: Center(
                child: Text(
                  "GIFTS FOR YOU 🥰",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              height: 50.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  border: Border.all(color: Colors.black)),
              child: Center(
                child: Text(
                  "SEND GIFTS 🥰",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              height: 50.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  border: Border.all(color: Colors.black)),
              child: Center(
                child: Text(
                  "REQUEST GIFTS 🥰",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '🥰',
                  style: TextStyle(fontSize: 20.sp),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
              child: Text(
                textAlign: TextAlign.center,
                'Win Bonus Coins by Sharing Your Winnings and Tagging Us on Instagram or Facebook',
                style: TextStyle(
                    color: AppColor.pinkColor,
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30.h,
                  width: 30.h,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Container(
                  height: 30.h,
                  width: 30.h,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        )
      ],
    );
  }
}

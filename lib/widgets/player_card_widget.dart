import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/utils.dart';

class PlayerCardWidget extends StatelessWidget {
  const PlayerCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      width: double.maxFinite,
      decoration: BoxDecoration(
          border: Border.all(color: AppColor.primaryColor),
          borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60.h,
                width: 50.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border:
                        Border.all(color: AppColor.primaryColor, width: 2.w)),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'Ritesh',
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 4.w),
                    height: 20.h,
                    width: 34.w,
                    decoration: const BoxDecoration(color: Colors.grey),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'WINNINGS: 101.5K',
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 35.h,
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 2.h),
                decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: const Center(
                  child: Text(
                    "ONLINE",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

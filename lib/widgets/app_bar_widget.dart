import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/utils.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 40.h,
              width: 40.w,
              margin: EdgeInsets.only(right: 5.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.red),
            ),
            Text(
              'Ritesh',
              style: TextStyle(
                  color: AppColor.whiteColor,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
        Row(
          children: [
            Text(
              '1000 Coins | 100 ₹ +',
              style: TextStyle(
                  color: AppColor.whiteColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: 8.w,
            ),
            const Icon(
              Icons.notification_add,
              color: AppColor.whiteColor,
            )
          ],
        ),
      ],
    );
  }
}

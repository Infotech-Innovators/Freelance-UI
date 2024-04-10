import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/utils.dart';

class ButtonContainerWidget extends StatelessWidget {
  const ButtonContainerWidget(
      {super.key, required this.text, required this.isActive});
  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 170.w,
      decoration: BoxDecoration(
          color: isActive ? AppColor.primaryColor : Colors.transparent,
          borderRadius: BorderRadius.all(
            Radius.circular(15.r),
          ),
          border: Border.all(
              color: isActive ? AppColor.whiteColor : AppColor.primaryColor)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 15.sp,
              color: isActive ? AppColor.whiteColor : AppColor.primaryColor),
        ),
      ),
    );
  }
}

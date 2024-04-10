// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/utils.dart';

class FilterCardWidget extends StatelessWidget {
  FilterCardWidget(
      {super.key,
      required this.text,
      required this.isActive,
      required this.height,
      required this.width,
      this.icon});
  final String text;
  final bool isActive;
  final double height;
  final double width;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
          color: isActive ? AppColor.primaryColor : Colors.transparent,
          borderRadius: BorderRadius.all(
            Radius.circular(4.r),
          ),
          border: Border.all(
              width: isActive ? 2.5.w : 0,
              color: isActive
                  ? AppColor.primaryColor
                  : const Color.fromARGB(255, 93, 84, 84))),
      child: Center(
        child: icon == null
            ? Text(
                text,
                style: TextStyle(
                    fontSize: 17.sp,
                    color: isActive
                        ? Colors.white
                        : const Color.fromARGB(255, 167, 167, 167),
                    fontWeight: FontWeight.w500),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: isActive ? Colors.white : Colors.grey,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: isActive
                            ? Colors.white
                            : const Color.fromARGB(255, 167, 167, 167),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
      ),
    );
  }
}

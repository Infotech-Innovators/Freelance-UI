import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/utils.dart';

class StocksTile extends StatelessWidget {
  const StocksTile(
      {super.key, required this.stockName, required this.timeString});
  final String stockName;
  final String timeString;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            stockName,
            style: TextStyle(
                color: AppColor.primaryColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500),
          ),
          Text(
            timeString,
            style: TextStyle(color: AppColor.primaryColor, fontSize: 15.sp),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/widgets/advance_pool_widget.dart';
import 'package:freelance_ui/widgets/button_container_widget.dart';
import 'package:freelance_ui/widgets/pool_widget.dart';

class CommoditiesPage extends StatefulWidget {
  const CommoditiesPage({super.key});

  @override
  State<CommoditiesPage> createState() => _CommoditiesPageState();
}

class _CommoditiesPageState extends State<CommoditiesPage> {
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
                  text: "PORTFOLIO",
                  isActive: true,
                ),
                ButtonContainerWidget(
                  text: "PAPERTRADING",
                  isActive: false,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 15.w,
              ),
              Text(
                "BEGINNER",
                style: TextStyle(
                    color: const Color.fromARGB(255, 170, 167, 167),
                    fontSize: 17.sp),
              ),
            ],
          ),
          const PoolWidget(),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 15.w,
              ),
              Text(
                "INTERMEDIATE",
                style: TextStyle(
                    color: const Color.fromARGB(255, 170, 167, 167),
                    fontSize: 17.sp),
              ),
            ],
          ),
          const PoolWidget(),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 15.w,
              ),
              Text(
                "ADVANCE",
                style: TextStyle(
                    color: const Color.fromARGB(255, 170, 167, 167),
                    fontSize: 17.sp),
              ),
            ],
          ),
          const AdvancePoolWidget()
        ],
      ),
    );
  }
}

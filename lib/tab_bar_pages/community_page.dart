import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/utils.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 10,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.menu,
                          size: 30,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Container(
                          height: 40.h,
                          width: 40.w,
                          margin: EdgeInsets.only(right: 5.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey),
                        ),
                        Text(
                          'Ritesh',
                          style: TextStyle(
                              color: AppColor.primaryColor,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    const Icon(Icons.filter_1)
                  ],
                ),
              ),
              Container(
                height: 1.5.h,
                width: double.maxFinite,
                color: Colors.grey,
              ),
              Expanded(
                  child: Container(
                color: const Color.fromARGB(255, 255, 227, 227),
                child: const Center(
                  child: Text(
                    'Chat Screen Part ',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          child: Container(
            color: Colors.white,
            height: 47.h,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Type here ...',
                    prefixText: '😀',
                    prefixStyle: TextStyle(fontSize: 20.sp),
                    suffixIcon: const Icon(
                      Icons.send,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r))),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

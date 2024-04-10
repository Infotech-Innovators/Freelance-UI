import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/utils.dart';

class AdvancePoolWidget extends StatelessWidget {
  const AdvancePoolWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.r))),
      child: Card(
        elevation: 20,
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(20.r))),
          height: 171.h,
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        topRight: Radius.circular(20.r))),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "MAX PRIZE POOL",
                          style: TextStyle(
                              color: AppColor.whiteColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "ENTRY",
                          style: TextStyle(
                              color: AppColor.whiteColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 22, 93, 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 5.h),
                          child: Text(
                            "₹ 1,500",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 255, 242, 248),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 22, 93, 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 5.h),
                          child: Text(
                            "₹ 99",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 255, 242, 248),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const LinearProgressIndicator(
                      backgroundColor: Colors.white,
                      color: Colors.red,
                      value: 0.4,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: AppColor.redColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 5.h),
                          child: Text(
                            '2 Spots Left',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.sp),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 1.h,
                color: Colors.white,
              ),
              Container(
                height: 40.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 24, 28, 31),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.r),
                        bottomRight: Radius.circular(20.r))),
                child: const Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.one_k,
                                color: Colors.white,
                              ),
                              Text('1000')
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.one_k,
                                color: Colors.white,
                              ),
                              Text('65%')
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.one_k,
                                color: Colors.white,
                              ),
                              Text('Upto 4')
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.one_k,
                              color: Colors.white,
                            ),
                            Text('Flexible')
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

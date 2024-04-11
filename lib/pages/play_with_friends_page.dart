import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/widgets/player_card_widget.dart';
import 'package:freelance_ui/widgets/sortby_card_widget.dart';

class PlayWithFriendsPage extends StatefulWidget {
  const PlayWithFriendsPage({super.key});

  @override
  State<PlayWithFriendsPage> createState() => _PlayWithFriendsPageState();
}

class _PlayWithFriendsPageState extends State<PlayWithFriendsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 5.w,
                    ),
                    FilterCardWidget(
                        icon: Icons.search,
                        text: "SEARCH",
                        isActive: true,
                        height: 40.h,
                        width: 110.w),
                    FilterCardWidget(
                        icon: Icons.pin,
                        text: "SELECT",
                        isActive: false,
                        height: 40.h,
                        width: 110.w),
                    FilterCardWidget(
                        icon: Icons.play_arrow,
                        text: "CHALLENGE",
                        isActive: false,
                        height: 40.h,
                        width: 130.w),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          'NAME',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          'STATUS',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              for (int i = 0; i < 15; i++) ...[const PlayerCardWidget()],
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Container(
                height: 1.5.h,
                width: double.maxFinite,
                color: Colors.grey,
                margin: EdgeInsets.symmetric(vertical: 10.h),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FilterCardWidget(
                        text: "INVITE FRIENDS",
                        isActive: true,
                        height: 50.h,
                        width: 150.w),
                    FilterCardWidget(
                        text: "ADD BY \nLEARNER ID",
                        isActive: true,
                        height: 50.h,
                        width: 170.w),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

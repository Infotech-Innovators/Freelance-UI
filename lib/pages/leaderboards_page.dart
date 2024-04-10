import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/widgets/rank_tile_widget.dart';
import 'package:freelance_ui/widgets/sortby_card_widget.dart';

class LeaderBoardsPage extends StatefulWidget {
  const LeaderBoardsPage({super.key});

  @override
  State<LeaderBoardsPage> createState() => _LeaderBoardsPageState();
}

class _LeaderBoardsPageState extends State<LeaderBoardsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 5.w,
                ),
                FilterCardWidget(
                    icon: Icons.person,
                    text: "FRIENDS",
                    isActive: true,
                    height: 40.h,
                    width: 130.w),
                FilterCardWidget(
                    icon: Icons.location_city,
                    text: "COUNTRY",
                    isActive: false,
                    height: 40.h,
                    width: 130.w),
                FilterCardWidget(
                    icon: Icons.location_on,
                    text: "WORLD",
                    isActive: false,
                    height: 40.h,
                    width: 130.w),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          for (int i = 0; i < 3; i++) ...[
            SizedBox(
              height: 6.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 30.h,
                    width: 100.w,
                    color: Colors.greenAccent,
                  )
                ],
              ),
            ),
          ],
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
                      'RANK        ',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      'NAME',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      'WEEKLY WINNINGS',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
          for (int i = 0; i < 5; i++) ...[const RankTileWidget()]
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/utils.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<String> optionsName = [
    "MY TRIALS",
    "EDIT PROFILE",
    "SETTINGS",
    "REFER & EARN",
    "HELP & SUPPORT",
    "HOW TO PLAY",
    "MORE",
  ];
  final List<IconData> iconsData = [
    Icons.try_sms_star,
    Icons.person,
    Icons.settings,
    Icons.money,
    Icons.help,
    Icons.help,
    Icons.more,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: Text(
          "MY ACCOUNT",
          style: TextStyle(color: Colors.white, fontSize: 17.sp),
        ),
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 255, 241, 241)),
        actions: [
          Text(
            'Learner ID:\n123-456-789',
            style: TextStyle(color: Colors.white, fontSize: 13.sp),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 130.h,
                  width: 130.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15.r)),
                )
              ],
            ),
            SizedBox(
              height: 70.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'TOTAL WINNINGS: 101.5K',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'COMPETITIONS PLAYED: 27',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'COIN WALLET: 45.67K',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'COMPETITIONS WON: 5',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WIN STREAK: 0',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 68.h,
            ),
            for (int i = 0; i < optionsName.length; i++)
              ListTile(
                leading: Icon(
                  iconsData[i],
                  color: Colors.blue,
                ),
                title: Text(
                  optionsName[i],
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              width: double.maxFinite,
              height: 55.h,
              child: const Center(
                child: Text(
                  'LOGO',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

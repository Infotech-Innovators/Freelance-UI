import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/widgets/rank_tile_widget.dart';

class LeaderBoardsPage extends StatefulWidget {
  const LeaderBoardsPage({super.key});

  @override
  State<LeaderBoardsPage> createState() => _LeaderBoardsPageState();
}

class _LeaderBoardsPageState extends State<LeaderBoardsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30.h,
        ),
        const RankTileWidget()
      ],
    );
  }
}

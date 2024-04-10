import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/widgets/player_card_widget.dart';

class PlayWithFriendsPage extends StatefulWidget {
  const PlayWithFriendsPage({super.key});

  @override
  State<PlayWithFriendsPage> createState() => _PlayWithFriendsPageState();
}

class _PlayWithFriendsPageState extends State<PlayWithFriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        const PlayerCardWidget()
      ],
    );
  }
}

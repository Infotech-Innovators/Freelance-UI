import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class VideoPlayingWidget extends StatefulWidget {
  const VideoPlayingWidget({super.key});

  @override
  State<VideoPlayingWidget> createState() => _VideoPlayingWidgetState();
}

class _VideoPlayingWidgetState extends State<VideoPlayingWidget> {
  late VideoPlayerController _videoPlayerController;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(longVideo),
    )..initialize().then((value) => setState(() {
          isLoading = false;
        }));
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      height: isLoading ? 170.h : 200.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.lightBlue, borderRadius: BorderRadius.circular(15.r)),
      child: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: VideoPlayer(_videoPlayerController),
            ),
    );
  }
}

String videoUrlLandscape =
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4";
String videoUrlPortrait =
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4';
String longVideo =
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";

String video720 =
    "https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_10mb.mp4";

String video480 =
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4";

String video240 =
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4";

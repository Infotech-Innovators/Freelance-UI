import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoPlayingWidget extends StatefulWidget {
  const VideoPlayingWidget({super.key});

  @override
  State<VideoPlayingWidget> createState() => _VideoPlayingWidgetState();
}

class _VideoPlayingWidgetState extends State<VideoPlayingWidget> {
  late CachedVideoPlayerController _videoPlayerController,
      _videoPlayerController2,
      _videoPlayerController3;
  bool isLoading = true;

  late CustomVideoPlayerController _customVideoPlayerController;

  final CustomVideoPlayerSettings _customVideoPlayerSettings =
      const CustomVideoPlayerSettings(showSeekButtons: true);

  @override
  void initState() {
    super.initState();

    _videoPlayerController = CachedVideoPlayerController.network(
      longVideo,
    )..initialize().then((value) => setState(() {
          isLoading = false;
        }));
    _videoPlayerController2 = CachedVideoPlayerController.network(video240);
    _videoPlayerController3 = CachedVideoPlayerController.network(video480);
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: _videoPlayerController,
      customVideoPlayerSettings: _customVideoPlayerSettings,
      additionalVideoSources: {
        "240p": _videoPlayerController2,
        "480p": _videoPlayerController3,
        "720p": _videoPlayerController,
      },
    );
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
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
              child: CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController),
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

import 'package:coincidence/OnboardingScreen/intropage.dart';
import 'package:coincidence/Pages/SignUp.dart';
import 'package:coincidence/Splashscreen/basicoverlay.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AssetPlayer extends StatefulWidget {
  const AssetPlayer({Key? key}) : super(key: key);

  @override
  State<AssetPlayer> createState() => _AssetPlayerState();
}

// class MyClass {
//   Future<void> initializeVideoPlayerFuture;
//   MyClass({required this.initializeVideoPlayerFuture});
// }

class _AssetPlayerState extends State<AssetPlayer> {

  final asset = "videos/splash.mp4";
  late VideoPlayerController controller;

  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {

    controller = VideoPlayerController.asset(asset);
    _initializeVideoPlayerFuture = controller.initialize();
    controller.setLooping(false);
    controller.setVolume(1.0);
    super.initState();
    _navigatehome();
    if(controller.value.isPlaying){
        controller.pause();
      }
      else
      {
        controller.play();
      }

  }
  _navigatehome() async{
    await Future.delayed(Duration(milliseconds: 3927),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoarding()));
    });
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)=>
      controller != null && controller.value.isInitialized
          ? Container(alignment: Alignment.topCenter, child: buildVideo())
          : Container(
        height: 200,
      );

  Widget buildVideo() => Stack(
    fit: StackFit.expand,
    children: <Widget>[
      buildVideoPlayer(),
      Positioned.fill(child: BasicOverlayWidget(controller: controller)),
    ],
  );

  Widget buildVideoPlayer() => buildFullScreen(
    child: AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: VideoPlayer(controller),
    ),
  );

  Widget buildFullScreen({
    required Widget child,
  }){
    final size = controller.value.size;
    final width = size.width;
    final height = size.height;


    return FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(width: width,height: height,child: child));
  }

}

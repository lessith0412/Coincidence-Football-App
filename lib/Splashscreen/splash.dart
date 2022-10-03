import 'package:coincidence/LottieAnimation/animation.dart';
import 'package:coincidence/OnboardingScreen/intropage.dart';
import 'package:coincidence/Splashscreen/basicoverlay.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // video controller
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
      'videos/splash.mp4',
    )
      ..initialize().then((_) {
        setState(() {});
      })
      ..setVolume(1.0);

    _playVideo();
  }

  void _playVideo() async {
    // playing video
    _controller.play();

    //add delay till video is complite
    await Future.delayed(const Duration(seconds: 3));

    // navigating to home screen
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (builder)=>animation()),
            (route) => false);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)=>
      _controller != null && _controller.value.isInitialized
          ? Container(alignment: Alignment.topCenter, child: buildVideo())
          : Container(
        height: 200,
      );

  Widget buildVideo() => Stack(
    fit: StackFit.expand,
    children: <Widget>[
      buildVideoPlayer(),
      Positioned.fill(child: BasicOverlayWidget(controller: _controller)),
    ],
  );

  Widget buildVideoPlayer() => buildFullScreen(
    child: AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: VideoPlayer(_controller),
    ),
  );

  Widget buildFullScreen({
    required Widget child,
  }){
    final size = _controller.value.size;
    final width = size.width;
    final height = size.height;


    return FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(width: width,height: height,child: child));
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       child: Container(
  //         decoration: BoxDecoration(
  //             image: DecorationImage(
  //               image: AssetImage('assets/images/screen.PNG'),
  //               fit: BoxFit.cover,
  //             )
  //         ),
  //         child: _controller.value.isInitialized
  //             ? AspectRatio(
  //           aspectRatio: _controller.value.aspectRatio,
  //           child: VideoPlayer(
  //             _controller,
  //           ),
  //         )
  //             : Container(),
  //       ),
  //     ),
  //   );
  // }
}
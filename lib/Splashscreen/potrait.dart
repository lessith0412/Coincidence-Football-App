import 'package:coincidence/Splashscreen/videoplayerwidget.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Potrait extends StatefulWidget {
  const Potrait({Key? key}) : super(key: key);

  @override
  State<Potrait> createState() => _PotraitState();
}

class _PotraitState extends State<Potrait> {

  final asset = "videos/sample_video.mp4";
  late VideoPlayerController controller;

  @override
  void initState(){
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());

  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) =>
      VideoPlayerWidget(controller: controller);
}

import 'package:coincidence/OnboardingScreen/intropage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';

class animation extends StatefulWidget {
  const animation({Key? key}) : super(key: key);

  @override
  State<animation> createState() => _animationState();



}

class _animationState extends State<animation> {
  @override

  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      // 5 seconds over, navigate to Page2.
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (builder) => OnBoarding()),
              (route) => false);
    }
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Lottie.network('https://assets8.lottiefiles.com/packages/lf20_nddjo7w4.json'),
        ),
    );
  }
}

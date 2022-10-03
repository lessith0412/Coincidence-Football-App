import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _Intro createState() => _Intro();
}

class _Intro extends State<Intro> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset('assets/images/screen.PNG'),
          title: " ",
          body: "Welcome to Coincidence League",
          footer: Text("Welcome to the World of Football"),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: IntroductionScreen(              // ERROR!!
              globalBackgroundColor: Colors.white,
              pages: getPages(),
              showNextButton: false,
              showSkipButton: false,
              skip: Text("Skip"),
              done: Text("Lets Get Started"),
              onDone: () {},
            )));
  }
}
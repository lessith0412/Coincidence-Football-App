import 'package:flutter/material.dart';
import 'package:coincidence/HomePage_down/leaguecontainer.dart';

class HomeScreen1 extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF00838F),
                  Color(0xFF006064),
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(0.0, 1.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Teams',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: [
                    GestureDetector(
                      child: LeagueContainer(image: 'assets/images/liverpool.png',),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: LeagueContainer(image: 'assets/images/barca.png'),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: LeagueContainer(image: 'assets/images/realmadrid.png'),
                      onTap: (){ },
                    ),
                    GestureDetector(
                      child: LeagueContainer(image: 'assets/images/psg.png'),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: LeagueContainer(image: 'assets/images/manutd_logo.png'),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: LeagueContainer(image: 'assets/images/chelsea.png'),
                      onTap: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}